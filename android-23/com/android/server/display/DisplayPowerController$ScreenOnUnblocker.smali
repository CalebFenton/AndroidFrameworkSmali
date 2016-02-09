.class final Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnUnblocker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    #@0
    .prologue
    .line 1236
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onScreenOn()V
    .locals 3

    #@0
    .prologue
    .line 1239
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get1(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x3

    #@7
    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 1240
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@f
    .line 1241
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@11
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get1(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 1238
    return-void
.end method
