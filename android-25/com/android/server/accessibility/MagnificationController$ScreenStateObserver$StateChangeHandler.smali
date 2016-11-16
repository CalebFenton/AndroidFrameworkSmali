.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@2
    .line 918
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 917
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 923
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 922
    :goto_0
    return-void

    #@6
    .line 925
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@8
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->-wrap0(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;)V

    #@b
    goto :goto_0

    #@c
    .line 923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
