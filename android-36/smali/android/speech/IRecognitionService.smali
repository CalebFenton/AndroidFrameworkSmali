.class public interface abstract Landroid/speech/IRecognitionService;
.super Ljava/lang/Object;
.source "IRecognitionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionService$Stub;,
        Landroid/speech/IRecognitionService$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist cancel(Landroid/speech/IRecognitionListener;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o stopListening(Landroid/speech/IRecognitionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
