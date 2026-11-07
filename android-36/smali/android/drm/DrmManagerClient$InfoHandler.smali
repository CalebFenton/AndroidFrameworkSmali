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
.field public static final greylist-max-o INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor blacklist <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 203
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "info":Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    .line 210
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_78

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmManagerClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 212
    :pswitch_22
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 213
    .local v2, "uniqueId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 214
    .local v3, "infoType":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "message":Ljava/lang/String;
    packed-switch v3, :pswitch_data_7e

    .line 235
    new-instance v5, Landroid/drm/DrmErrorEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    move-object v1, v5

    goto :goto_4c

    .line 219
    :pswitch_36
    :try_start_36
    invoke-static {v4}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 222
    goto :goto_3e

    .line 220
    :catch_3a
    move-exception v5

    .line 221
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3e
    new-instance v5, Landroid/drm/DrmInfoEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    .line 224
    goto :goto_4c

    .line 231
    :pswitch_45
    new-instance v5, Landroid/drm/DrmInfoEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    .line 232
    nop

    .line 239
    :goto_4c
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    if-eqz v5, :cond_61

    if-eqz v0, :cond_61

    .line 240
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v0}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    .line 242
    :cond_61
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    if-eqz v5, :cond_76

    if-eqz v1, :cond_76

    .line 243
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 245
    :cond_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_36
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method
