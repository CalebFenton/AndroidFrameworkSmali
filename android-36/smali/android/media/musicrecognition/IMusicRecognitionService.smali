.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionService;
.super Ljava/lang/Object;
.source "IMusicRecognitionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionService$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionService"


# virtual methods
.method public abstract blacklist getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
