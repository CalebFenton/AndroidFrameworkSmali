.class public interface abstract Landroid/media/tv/extension/signal/IHdmiSignalInterface;
.super Ljava/lang/Object;
.source "IHdmiSignalInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;,
        Landroid/media/tv/extension/signal/IHdmiSignalInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IHdmiSignalInterface"


# virtual methods
.method public abstract blacklist addHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHdmiSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setForceVrr(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setLowLatency(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
