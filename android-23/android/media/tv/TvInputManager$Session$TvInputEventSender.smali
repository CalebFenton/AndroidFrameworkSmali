.class final Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2091
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$1:Landroid/media/tv/TvInputManager$Session;

    #@2
    .line 2092
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 2091
    return-void
.end method


# virtual methods
.method public onInputEventFinished(IZ)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 2097
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$1:Landroid/media/tv/TvInputManager$Session;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    #@6
    .line 2096
    return-void
.end method
