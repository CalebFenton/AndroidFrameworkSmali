.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1966
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 1997
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "DcDisconnectingState not handled msg.what="

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    .line 1998
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    iget v7, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 1997
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@26
    .line 2000
    const/4 v2, 0x0

    #@27
    .line 2003
    .local v2, "retVal":Z
    :goto_0
    return v2

    #@28
    .line 1968
    .end local v2    # "retVal":Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "DcDisconnectingState msg.what=EVENT_CONNECT. Defer. RefCount = "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 1969
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@38
    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@3a
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@3d
    move-result v6

    #@3e
    .line 1968
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@49
    .line 1970
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4b
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@4e
    .line 1971
    const/4 v2, 0x1

    #@4f
    .line 1972
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@50
    .line 1975
    .end local v2    # "retVal":Z
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52
    check-cast v0, Landroid/os/AsyncResult;

    #@54
    .line 1976
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@56
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@58
    .line 1978
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v5, "DcDisconnectingState msg.what=EVENT_DEACTIVATE_DONE RefCount="

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 1979
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@66
    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@68
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@6b
    move-result v5

    #@6c
    .line 1978
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 1980
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@76
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@79
    .line 1981
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7b
    if-eqz v4, :cond_0

    #@7d
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7f
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@82
    .line 1983
    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@84
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@86
    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@88
    if-ne v4, v5, :cond_1

    #@8a
    .line 1986
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8c
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@8f
    move-result-object v5

    #@90
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@92
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@94
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    #@97
    .line 1987
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@99
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9b
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@9e
    move-result-object v5

    #@9f
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@a2
    .line 1992
    :goto_1
    const/4 v2, 0x1

    #@a3
    .line 1993
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@a4
    .line 1989
    .end local v2    # "retVal":Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a6
    new-instance v5, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v6, "DcDisconnectState stale EVENT_DEACTIVATE_DONE dp.tag="

    #@ae
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    .line 1990
    iget v6, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@b4
    .line 1989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    .line 1990
    const-string/jumbo v6, " mTag="

    #@bb
    .line 1989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    .line 1990
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c1
    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@c3
    .line 1989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@ce
    goto :goto_1

    #@cf
    .line 1966
    nop

    #@d0
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
