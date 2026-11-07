.class public interface abstract Lcom/android/ims/internal/uce/options/IOptionsListener;
.super Ljava/lang/Object;
.source "IOptionsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;,
        Lcom/android/ims/internal/uce/options/IOptionsListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-r cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r getVersionCb(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
