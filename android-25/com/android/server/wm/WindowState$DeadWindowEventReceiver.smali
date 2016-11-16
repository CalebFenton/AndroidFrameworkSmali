.class final Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeadWindowEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->this$0:Lcom/android/server/wm/WindowState;

    #@2
    .line 1544
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@d
    .line 1543
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 1548
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@4
    .line 1547
    return-void
.end method
