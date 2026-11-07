.class public interface abstract Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.super Ljava/lang/Object;
.source "ISoundTriggerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;,
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.ISoundTriggerCallback"


# virtual methods
.method public abstract blacklist onModelUnloaded(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onModuleDied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResourcesAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
