.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field final synthetic val$track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$track"    # Landroid/media/AudioTrack;
    .param p4, "val$listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@0
    .prologue
    .line 2346
    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@2
    iput-object p3, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    #@4
    iput-object p4, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@6
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2349
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2350
    return-void

    #@5
    .line 2352
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "Unknown native event type: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Landroid/media/AudioTrack;->-wrap0(Ljava/lang/String;)V

    #@23
    .line 2348
    :cond_1
    :goto_0
    return-void

    #@24
    .line 2354
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 2355
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@2a
    iget-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    #@2c
    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onMarkerReached(Landroid/media/AudioTrack;)V

    #@2f
    goto :goto_0

    #@30
    .line 2359
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 2360
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@36
    iget-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    #@38
    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioTrack;)V

    #@3b
    goto :goto_0

    #@3c
    .line 2352
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
