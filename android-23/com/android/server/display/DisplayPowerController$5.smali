.class Lcom/android/server/display/DisplayPowerController$5;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    #@0
    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityPositive()V

    #@9
    .line 1042
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@b
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    #@12
    .line 1040
    return-void
.end method
