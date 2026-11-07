.class public Landroid/speech/tts/ITextToSpeechCallback$Default;
.super Ljava/lang/Object;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAudioAvailable(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist onBeginSynthesis(Ljava/lang/String;III)V
    .registers 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist onRangeStart(Ljava/lang/String;III)V
    .registers 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "frame"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onStop(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
