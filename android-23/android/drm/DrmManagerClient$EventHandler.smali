.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/drm/DrmManagerClient;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@2
    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 135
    const/4 v3, 0x0

    #@2
    .line 136
    .local v3, "event":Landroid/drm/DrmEvent;
    const/4 v2, 0x0

    #@3
    .line 137
    .local v2, "error":Landroid/drm/DrmErrorEvent;
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 139
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v6, p1, Landroid/os/Message;->what:I

    #@a
    packed-switch v6, :pswitch_data_0

    #@d
    .line 167
    const-string/jumbo v6, "DrmManagerClient"

    #@10
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v8, "Unknown message type "

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    iget v8, p1, Landroid/os/Message;->what:I

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 168
    return-void

    #@2a
    .line 141
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v1, Landroid/drm/DrmInfo;

    #@2e
    .line 142
    .local v1, "drmInfo":Landroid/drm/DrmInfo;
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@30
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@32
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@35
    move-result v7

    #@36
    invoke-static {v6, v7, v1}, Landroid/drm/DrmManagerClient;->-wrap0(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    #@39
    move-result-object v5

    #@3a
    .line 144
    .local v5, "status":Landroid/drm/DrmInfoStatus;
    const-string/jumbo v6, "drm_info_status_object"

    #@3d
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 145
    const-string/jumbo v6, "drm_info_object"

    #@43
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 147
    if-eqz v5, :cond_2

    #@48
    iget v6, v5, Landroid/drm/DrmInfoStatus;->statusCode:I

    #@4a
    const/4 v7, 0x1

    #@4b
    if-ne v7, v6, :cond_2

    #@4d
    .line 148
    new-instance v3, Landroid/drm/DrmEvent;

    #@4f
    .end local v3    # "event":Landroid/drm/DrmEvent;
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@51
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@54
    move-result v6

    #@55
    .line 149
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@57
    iget v8, v5, Landroid/drm/DrmInfoStatus;->infoType:I

    #@59
    invoke-static {v7, v8}, Landroid/drm/DrmManagerClient;->-wrap3(Landroid/drm/DrmManagerClient;I)I

    #@5c
    move-result v7

    #@5d
    .line 148
    invoke-direct {v3, v6, v7, v9, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    #@60
    .line 170
    .end local v1    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v2    # "error":Landroid/drm/DrmErrorEvent;
    .end local v5    # "status":Landroid/drm/DrmInfoStatus;
    :goto_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@62
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    #@65
    move-result-object v6

    #@66
    if-eqz v6, :cond_0

    #@68
    if-eqz v3, :cond_0

    #@6a
    .line 171
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@6c
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    #@6f
    move-result-object v6

    #@70
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@72
    invoke-interface {v6, v7, v3}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    #@75
    .line 173
    :cond_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@77
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    #@7a
    move-result-object v6

    #@7b
    if-eqz v6, :cond_1

    #@7d
    if-eqz v2, :cond_1

    #@7f
    .line 174
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@81
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    #@84
    move-result-object v6

    #@85
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@87
    invoke-interface {v6, v7, v2}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    #@8a
    .line 134
    :cond_1
    return-void

    #@8b
    .line 151
    .restart local v1    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v2    # "error":Landroid/drm/DrmErrorEvent;
    .restart local v3    # "event":Landroid/drm/DrmEvent;
    .restart local v5    # "status":Landroid/drm/DrmInfoStatus;
    :cond_2
    if-eqz v5, :cond_3

    #@8d
    iget v4, v5, Landroid/drm/DrmInfoStatus;->infoType:I

    #@8f
    .line 152
    .local v4, "infoType":I
    :goto_1
    new-instance v2, Landroid/drm/DrmErrorEvent;

    #@91
    .end local v2    # "error":Landroid/drm/DrmErrorEvent;
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@93
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@96
    move-result v6

    #@97
    .line 153
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@99
    invoke-static {v7, v4}, Landroid/drm/DrmManagerClient;->-wrap2(Landroid/drm/DrmManagerClient;I)I

    #@9c
    move-result v7

    #@9d
    .line 152
    invoke-direct {v2, v6, v7, v9, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    #@a0
    .local v2, "error":Landroid/drm/DrmErrorEvent;
    goto :goto_0

    #@a1
    .line 151
    .end local v4    # "infoType":I
    .local v2, "error":Landroid/drm/DrmErrorEvent;
    :cond_3
    invoke-virtual {v1}, Landroid/drm/DrmInfo;->getInfoType()I

    #@a4
    move-result v4

    #@a5
    .restart local v4    # "infoType":I
    goto :goto_1

    #@a6
    .line 158
    .end local v1    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v4    # "infoType":I
    .end local v5    # "status":Landroid/drm/DrmInfoStatus;
    :pswitch_1
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@a8
    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@aa
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@ad
    move-result v7

    #@ae
    invoke-static {v6, v7}, Landroid/drm/DrmManagerClient;->-wrap1(Landroid/drm/DrmManagerClient;I)I

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_4

    #@b4
    .line 159
    new-instance v3, Landroid/drm/DrmEvent;

    #@b6
    .end local v3    # "event":Landroid/drm/DrmEvent;
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@b8
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@bb
    move-result v6

    #@bc
    const/16 v7, 0x3e9

    #@be
    invoke-direct {v3, v6, v7, v9}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    #@c1
    .local v3, "event":Landroid/drm/DrmEvent;
    goto :goto_0

    #@c2
    .line 161
    .local v3, "event":Landroid/drm/DrmEvent;
    :cond_4
    new-instance v2, Landroid/drm/DrmErrorEvent;

    #@c4
    .end local v2    # "error":Landroid/drm/DrmErrorEvent;
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@c6
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    #@c9
    move-result v6

    #@ca
    .line 162
    const/16 v7, 0x7d7

    #@cc
    .line 161
    invoke-direct {v2, v6, v7, v9}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    #@cf
    .local v2, "error":Landroid/drm/DrmErrorEvent;
    goto :goto_0

    #@d0
    .line 139
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
