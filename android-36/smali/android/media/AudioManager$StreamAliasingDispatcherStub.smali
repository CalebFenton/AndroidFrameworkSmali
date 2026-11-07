.class final Landroid/media/AudioManager$StreamAliasingDispatcherStub;
.super Landroid/media/IStreamAliasingDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamAliasingDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10200
    iput-object p1, p0, Landroid/media/AudioManager$StreamAliasingDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStreamAliasingDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchStreamAliasingChanged$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "listener"    # Ljava/lang/Runnable;

    .line 10214
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchStreamAliasingChanged()V
    .registers 3

    .line 10214
    iget-object v0, p0, Landroid/media/AudioManager$StreamAliasingDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmStreamAliasingListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$StreamAliasingDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioManager$StreamAliasingDispatcherStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 10215
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 10206
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 10209
    goto :goto_c

    .line 10207
    :catch_8
    move-exception v0

    .line 10208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
