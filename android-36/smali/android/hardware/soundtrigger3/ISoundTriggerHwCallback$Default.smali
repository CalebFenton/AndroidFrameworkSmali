.class public Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Default;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
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

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modelUnloaded(I)V
    .registers 2
    .param p1, "model"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .registers 3
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .registers 3
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
