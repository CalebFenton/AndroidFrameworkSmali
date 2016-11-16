.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
.super Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallback"
.end annotation


# instance fields
.field private mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 474
    invoke-direct {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;-><init>()V

    #@3
    .line 475
    if-eqz p1, :cond_0

    #@5
    .line 476
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@7
    invoke-direct {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    #@a
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@c
    .line 474
    :cond_0
    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 483
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 481
    :cond_0
    return-void
.end method

.method public onResumed()V
    .locals 2

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 490
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 488
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 497
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 495
    :cond_0
    return-void
.end method
