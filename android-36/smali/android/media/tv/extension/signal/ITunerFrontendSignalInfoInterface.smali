.class public interface abstract Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface;
.super Ljava/lang/Object;
.source "ITunerFrontendSignalInfoInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Stub;,
        Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"


# virtual methods
.method public abstract blacklist getFrontendSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFrontendSignalInfoListener(Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
