.class Landroid/service/vr/VrListenerService$1;
.super Landroid/service/vr/IVrListener$Stub;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method constructor <init>(Landroid/service/vr/VrListenerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/vr/VrListenerService;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public focusedActivityChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    #@2
    invoke-static {v0}, Landroid/service/vr/VrListenerService;->-get0(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 73
    return-void
.end method
