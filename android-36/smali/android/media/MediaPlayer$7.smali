.class Landroid/media/MediaPlayer$7;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3968
    iput-object p1, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 3971
    iget-object v0, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mtryToDisableNativeRoutingCallback(Landroid/media/MediaPlayer;)V

    .line 3972
    iget-object v0, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->baseStop()V

    .line 3973
    return-void
.end method
