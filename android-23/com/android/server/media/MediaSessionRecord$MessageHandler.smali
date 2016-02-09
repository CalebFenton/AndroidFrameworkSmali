.class Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x9

.field private static final MSG_SEND_EVENT:I = 0x6

.field private static final MSG_UPDATE_EXTRAS:I = 0x5

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field private static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field private static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    .line 1229
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1233
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1232
    :goto_0
    :pswitch_0
    return-void

    #@6
    .line 1235
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@8
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap4(Lcom/android/server/media/MediaSessionRecord;)V

    #@b
    goto :goto_0

    #@c
    .line 1238
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@e
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap5(Lcom/android/server/media/MediaSessionRecord;)V

    #@11
    goto :goto_0

    #@12
    .line 1241
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@14
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap7(Lcom/android/server/media/MediaSessionRecord;)V

    #@17
    goto :goto_0

    #@18
    .line 1244
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@1a
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap6(Lcom/android/server/media/MediaSessionRecord;)V

    #@1d
    goto :goto_0

    #@1e
    .line 1247
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@20
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap3(Lcom/android/server/media/MediaSessionRecord;)V

    #@23
    goto :goto_0

    #@24
    .line 1250
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->-wrap2(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    #@31
    goto :goto_0

    #@32
    .line 1256
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@34
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap9(Lcom/android/server/media/MediaSessionRecord;)V

    #@37
    goto :goto_0

    #@38
    .line 1259
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3a
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap8(Lcom/android/server/media/MediaSessionRecord;)V

    #@3d
    goto :goto_0

    #@3e
    .line 1233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public post(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1264
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;)V

    #@4
    .line 1263
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 1267
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1273
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@7
    .line 1274
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1271
    return-void
.end method
