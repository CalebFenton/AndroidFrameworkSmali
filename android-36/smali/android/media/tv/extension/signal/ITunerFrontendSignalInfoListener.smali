.class public interface abstract Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener;
.super Ljava/lang/Object;
.source "ITunerFrontendSignalInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener$Stub;,
        Landroid/media/tv/extension/signal/ITunerFrontendSignalInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.ITunerFrontendSignalInfoListener"


# virtual methods
.method public abstract blacklist onFrontendStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
