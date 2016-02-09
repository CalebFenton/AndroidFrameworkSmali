.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallbackDelegate"
.end annotation


# static fields
.field public static final MSG_DISPLAY_PAUSED:I = 0x0

.field public static final MSG_DISPLAY_RESUMED:I = 0x1

.field public static final MSG_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 508
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    :goto_0
    const/4 v1, 0x1

    #@8
    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@b
    .line 509
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    #@d
    .line 507
    return-void

    #@e
    .line 508
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 513
    :goto_0
    return-void

    #@6
    .line 516
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    #@8
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    #@b
    goto :goto_0

    #@c
    .line 519
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    #@e
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    #@11
    goto :goto_0

    #@12
    .line 522
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    #@14
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    #@17
    goto :goto_0

    #@18
    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
