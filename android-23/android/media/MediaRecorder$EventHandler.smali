.class Landroid/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRecorder;
    .param p2, "mr"    # Landroid/media/MediaRecorder;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 999
    iput-object p1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #@2
    .line 1000
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1001
    iput-object p2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@7
    .line 999
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1021
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@2
    invoke-static {v0}, Landroid/media/MediaRecorder;->-get0(Landroid/media/MediaRecorder;)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1022
    const-string/jumbo v0, "MediaRecorder"

    #@f
    const-string/jumbo v1, "mediarecorder went away with unhandled events"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1023
    return-void

    #@16
    .line 1025
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@18
    sparse-switch v0, :sswitch_data_0

    #@1b
    .line 1041
    const-string/jumbo v0, "MediaRecorder"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unknown message type "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p1, Landroid/os/Message;->what:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 1042
    return-void

    #@38
    .line 1028
    :sswitch_0
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #@3a
    invoke-static {v0}, Landroid/media/MediaRecorder;->-get1(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 1029
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #@42
    invoke-static {v0}, Landroid/media/MediaRecorder;->-get1(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    #@45
    move-result-object v0

    #@46
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@48
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4a
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@4c
    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    #@4f
    .line 1031
    :cond_1
    return-void

    #@50
    .line 1035
    :sswitch_1
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #@52
    invoke-static {v0}, Landroid/media/MediaRecorder;->-get2(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    #@55
    move-result-object v0

    #@56
    if-eqz v0, :cond_2

    #@58
    .line 1036
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    #@5a
    invoke-static {v0}, Landroid/media/MediaRecorder;->-get2(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    #@5d
    move-result-object v0

    #@5e
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@60
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@62
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@64
    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    #@67
    .line 1038
    :cond_2
    return-void

    #@68
    .line 1025
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
