.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 349
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    .line 350
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    #@9
    .line 348
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .locals 1

    #@0
    .prologue
    .line 373
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    #@4
    .line 372
    return-void
.end method

.method public dispatchDisplayResumed()V
    .locals 1

    #@0
    .prologue
    .line 377
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    #@4
    .line 376
    return-void
.end method

.method public dispatchDisplayStopped()V
    .locals 1

    #@0
    .prologue
    .line 381
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    #@4
    .line 380
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 356
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 354
    :goto_0
    return-void

    #@6
    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    #@8
    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    goto :goto_0

    #@c
    .line 367
    :catch_0
    move-exception v0

    #@d
    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VirtualDisplayAdapter"

    #@10
    const-string/jumbo v2, "Failed to notify listener of virtual display event."

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0

    #@17
    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    #@19
    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    #@1c
    goto :goto_0

    #@1d
    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    #@1f
    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 356
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
