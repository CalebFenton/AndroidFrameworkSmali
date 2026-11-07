.class public Landroid/hardware/soundtrigger3/ISoundTriggerHw$Default;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist forceRecognitionEvent(I)V
    .registers 2
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getParameter(II)I
    .registers 4
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .registers 4
    .param p1, "soundModel"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .param p2, "callback"    # Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .registers 4
    .param p1, "soundModel"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "callback"    # Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setParameter(III)V
    .registers 4
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "deviceHandle"    # I
    .param p3, "ioHandle"    # I
    .param p4, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist stopRecognition(I)V
    .registers 2
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist unloadSoundModel(I)V
    .registers 2
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
