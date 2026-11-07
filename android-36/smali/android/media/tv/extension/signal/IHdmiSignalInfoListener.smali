.class public interface abstract Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;
.super Ljava/lang/Object;
.source "IHdmiSignalInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IHdmiSignalInfoListener$Stub;,
        Landroid/media/tv/extension/signal/IHdmiSignalInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IHdmiSignalInfoListener"


# virtual methods
.method public abstract blacklist onLowLatencyModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSignalInfoChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
