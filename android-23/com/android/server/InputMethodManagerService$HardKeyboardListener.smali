.class Lcom/android/server/InputMethodManagerService$HardKeyboardListener;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleHardKeyboardStatusChange(Z)V
    .locals 3
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get5(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 758
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@17
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    #@1e
    move-result v0

    #@1f
    .line 757
    if-eqz v0, :cond_0

    #@21
    .line 759
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@23
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get5(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 760
    const v2, 0x102034b

    #@2a
    .line 759
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2d
    move-result-object v2

    #@2e
    .line 761
    if-eqz p1, :cond_1

    #@30
    const/4 v0, 0x0

    #@31
    .line 759
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :cond_0
    monitor-exit v1

    #@35
    .line 752
    return-void

    #@36
    .line 761
    :cond_1
    const/16 v0, 0x8

    #@38
    goto :goto_0

    #@39
    .line 756
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0
.end method

.method public onHardKeyboardStatusChange(Z)V
    .locals 4
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    #@6
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@8
    .line 749
    if-eqz p1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v0

    #@f
    .line 748
    const/16 v3, 0xfa0

    #@11
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 747
    return-void

    #@19
    .line 749
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method
