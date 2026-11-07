.class public Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Default;
.super Ljava/lang/Object;
.source "ISoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist onClientDetached(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 2
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 4
    .param p1, "modelParam"    # I
    .param p2, "value"    # I
    .param p3, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist onPreempted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 5
    .param p1, "audioSessionToken"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .param p3, "recognitionInjection"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .param p4, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 2
    .param p1, "recognitionSession"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 2
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "phrases"    # [Landroid/media/soundtrigger/Phrase;
    .param p3, "modelInjection"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .param p4, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 2
    .param p1, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 2
    .param p1, "globalInjection"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
