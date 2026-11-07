.class public interface abstract Landroid/service/euicc/IDownloadSubscriptionCallback;
.super Ljava/lang/Object;
.source "IDownloadSubscriptionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;,
        Landroid/service/euicc/IDownloadSubscriptionCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
