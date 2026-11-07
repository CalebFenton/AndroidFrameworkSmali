.class Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4903
    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iput p2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 4906
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-static {v0}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->-$$Nest$fgetmOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmPreparedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-static {v1}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->-$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->val$status:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnDrmPreparedListener;->onDrmPrepared(Landroid/media/MediaPlayer;I)V

    .line 4907
    return-void
.end method
