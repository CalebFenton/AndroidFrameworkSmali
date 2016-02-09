.class Lcom/android/server/audio/AudioService$AudioHandler$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 4295
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    #@0
    .prologue
    .line 4297
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->-wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    #@5
    .line 4298
    const/4 v0, 0x1

    #@6
    return v0
.end method
