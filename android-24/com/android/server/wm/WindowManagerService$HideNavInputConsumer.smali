.class final Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;
.super Lcom/android/server/wm/InputConsumerImpl;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$InputConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HideNavInputConsumer"
.end annotation


# instance fields
.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    #@0
    .prologue
    .line 10005
    const-string/jumbo v0, "input consumer"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;Landroid/view/InputChannel;)V

    #@7
    .line 10007
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mClientChannel:Landroid/view/InputChannel;

    #@9
    .line 10006
    invoke-interface {p3, v0, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    #@f
    .line 10004
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 10012
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->removeInputConsumer()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 10013
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@c
    monitor-enter v1

    #@d
    .line 10014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    #@f
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    #@12
    .line 10015
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->disposeChannelsLw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 10011
    :cond_0
    return-void

    #@17
    .line 10013
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
