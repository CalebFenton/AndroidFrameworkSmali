.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/DisplayManagerService$LocalService;
    .param p2, "val$callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@0
    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    #@2
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public requestDisplayState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1511
    if-ne p1, v1, :cond_0

    #@3
    .line 1512
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    #@5
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@7
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap22(Lcom/android/server/display/DisplayManagerService;II)V

    #@a
    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@c
    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(I)V

    #@f
    .line 1517
    if-eq p1, v1, :cond_1

    #@11
    .line 1518
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    #@13
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@15
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap22(Lcom/android/server/display/DisplayManagerService;II)V

    #@18
    .line 1509
    :cond_1
    return-void
.end method
