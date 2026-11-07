.class final Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1107
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    .line 1108
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1109
    return-void
.end method


# virtual methods
.method public blacklist onInputEventFinished(IZ)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 1113
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/tv/ad/TvAdManager$Session;->finishedInputEvent(IZZ)V

    .line 1114
    return-void
.end method
