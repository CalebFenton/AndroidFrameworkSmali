.class public interface abstract Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
.super Ljava/lang/Object;
.source "IMicrophoneHotwordDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;,
        Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"


# virtual methods
.method public abstract blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
