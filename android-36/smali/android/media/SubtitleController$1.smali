.class Landroid/media/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor blacklist <init>(Landroid/media/SubtitleController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/SubtitleController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_24

    .line 70
    const/4 v0, 0x0

    return v0

    .line 67
    :pswitch_8
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoSelectDefaultTrack(Landroid/media/SubtitleController;)V

    .line 68
    return v1

    .line 64
    :pswitch_e
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack;

    invoke-static {v0, v2}, Landroid/media/SubtitleController;->-$$Nest$mdoSelectTrack(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V

    .line 65
    return v1

    .line 61
    :pswitch_18
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoHide(Landroid/media/SubtitleController;)V

    .line 62
    return v1

    .line 58
    :pswitch_1e
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-static {v0}, Landroid/media/SubtitleController;->-$$Nest$mdoShow(Landroid/media/SubtitleController;)V

    .line 59
    return v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_18
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
