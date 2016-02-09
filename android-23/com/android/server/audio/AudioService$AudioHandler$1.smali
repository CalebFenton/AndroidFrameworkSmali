.class Lcom/android/server/audio/AudioService$AudioHandler$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AudioHandler;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    #@0
    .prologue
    .line 4290
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$1;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 4292
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$1;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->-wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    #@5
    .line 4291
    return-void
.end method
