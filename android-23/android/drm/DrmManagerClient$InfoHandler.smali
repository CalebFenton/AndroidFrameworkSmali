.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/drm/DrmManagerClient;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@2
    .line 197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 196
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 201
    const/4 v2, 0x0

    #@1
    .line 202
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    #@2
    .line 204
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    iget v6, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v6, :pswitch_data_0

    #@7
    .line 241
    const-string/jumbo v6, "DrmManagerClient"

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "Unknown message type "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget v8, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 242
    return-void

    #@24
    .line 206
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@26
    .line 207
    .local v5, "uniqueId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@28
    .line 208
    .local v3, "infoType":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 210
    .local v4, "message":Ljava/lang/String;
    packed-switch v3, :pswitch_data_1

    #@31
    .line 229
    new-instance v1, Landroid/drm/DrmErrorEvent;

    #@33
    .end local v1    # "error":Landroid/drm/DrmErrorEvent;
    invoke-direct {v1, v5, v3, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    #@36
    .line 233
    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    :goto_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@38
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    #@3b
    move-result-object v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    if-eqz v2, :cond_0

    #@40
    .line 234
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@42
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    #@45
    move-result-object v6

    #@46
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@48
    invoke-interface {v6, v7, v2}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    #@4b
    .line 236
    :cond_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@4d
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    #@50
    move-result-object v6

    #@51
    if-eqz v6, :cond_1

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 237
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@57
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    #@5a
    move-result-object v6

    #@5b
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #@5d
    invoke-interface {v6, v7, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    #@60
    .line 239
    :cond_1
    return-void

    #@61
    .line 213
    .restart local v1    # "error":Landroid/drm/DrmErrorEvent;
    .restart local v2    # "info":Landroid/drm/DrmInfoEvent;
    :pswitch_1
    :try_start_0
    invoke-static {v4}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 217
    :goto_1
    new-instance v2, Landroid/drm/DrmInfoEvent;

    #@66
    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    invoke-direct {v2, v5, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    #@69
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    goto :goto_0

    #@6a
    .line 214
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    :catch_0
    move-exception v0

    #@6b
    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@6e
    goto :goto_1

    #@6f
    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    new-instance v2, Landroid/drm/DrmInfoEvent;

    #@71
    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    invoke-direct {v2, v5, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    #@74
    .line 226
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    goto :goto_0

    #@75
    .line 204
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    #@7c
    .line 210
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
