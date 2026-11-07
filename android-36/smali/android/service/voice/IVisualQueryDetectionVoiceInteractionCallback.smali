.class public interface abstract Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
.super Ljava/lang/Object;
.source "IVisualQueryDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;,
        Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"


# virtual methods
.method public abstract blacklist onQueryDetected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQueryFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQueryRejected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
