.class Landroid/media/AudioManager$1;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    #@0
    .prologue
    .line 2161
    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    #@2
    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 2
    .param p1, "focusChange"    # I
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2164
    iget-object v1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    #@2
    invoke-static {v1}, Landroid/media/AudioManager;->-get1(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 2165
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    #@10
    invoke-static {v1}, Landroid/media/AudioManager;->-get1(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 2163
    return-void
.end method
