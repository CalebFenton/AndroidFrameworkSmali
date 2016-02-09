.class Landroid/media/AudioManager$FocusEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2137
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2140
    const/4 v0, 0x0

    #@1
    .line 2141
    .local v0, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@3
    iget-object v1, v1, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@5
    invoke-static {v1}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    monitor-enter v2

    #@a
    .line 2142
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@c
    iget-object v3, v1, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    invoke-static {v3, v1}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v0

    #@16
    .local v0, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    monitor-exit v2

    #@17
    .line 2144
    if-eqz v0, :cond_0

    #@19
    .line 2145
    invoke-static {}, Landroid/media/AudioManager;->-get0()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "AudioManager dispatching onAudioFocusChange("

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 2146
    iget v3, p1, Landroid/os/Message;->what:I

    #@2b
    .line 2145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 2146
    const-string/jumbo v3, ") for "

    #@32
    .line 2145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 2146
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    .line 2145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 2147
    iget v1, p1, Landroid/os/Message;->what:I

    #@45
    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    #@48
    .line 2139
    :cond_0
    return-void

    #@49
    .line 2141
    .local v0, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :catchall_0
    move-exception v1

    #@4a
    monitor-exit v2

    #@4b
    throw v1
.end method
