.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->-wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 1
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-wrap8(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    #@5
    .line 1783
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap4(JZ)V

    #@9
    .line 1793
    return-void
.end method
