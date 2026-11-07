.class public interface abstract Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
.super Ljava/lang/Object;
.source "IInjectRecognitionEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;,
        Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.IInjectRecognitionEvent"


# virtual methods
.method public abstract blacklist triggerAbortRecognition()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
