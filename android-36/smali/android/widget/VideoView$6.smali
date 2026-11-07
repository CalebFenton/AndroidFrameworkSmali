.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/VideoView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/VideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 622
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .line 624
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p2}, Landroid/widget/VideoView;->-$$Nest$fputmCurrentBufferPercentage(Landroid/widget/VideoView;I)V

    .line 625
    return-void
.end method
