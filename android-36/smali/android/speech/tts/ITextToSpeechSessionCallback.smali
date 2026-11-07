.class public interface abstract Landroid/speech/tts/ITextToSpeechSessionCallback;
.super Ljava/lang/Object;
.source "ITextToSpeechSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;,
        Landroid/speech/tts/ITextToSpeechSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechSessionCallback"


# virtual methods
.method public abstract blacklist onConnected(Landroid/speech/tts/ITextToSpeechSession;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
