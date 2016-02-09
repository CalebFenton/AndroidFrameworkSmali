.class Landroid/view/SurfaceView$1;
.super Landroid/os/Handler;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 122
    :goto_0
    return-void

    #@7
    .line 125
    :pswitch_0
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    #@9
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    #@11
    goto :goto_0

    #@12
    .line 128
    :pswitch_1
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    #@14
    invoke-virtual {v0}, Landroid/view/SurfaceView;->handleGetNewSurface()V

    #@17
    goto :goto_0

    #@18
    .line 131
    :pswitch_2
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    #@1a
    invoke-virtual {v1, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1d
    goto :goto_0

    #@1e
    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
