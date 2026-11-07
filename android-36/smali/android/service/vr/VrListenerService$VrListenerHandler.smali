.class final Landroid/service/vr/VrListenerService$VrListenerHandler;
.super Landroid/os/Handler;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VrListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_18

    .line 91
    :pswitch_6
    iget-object v0, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V

    .line 95
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
