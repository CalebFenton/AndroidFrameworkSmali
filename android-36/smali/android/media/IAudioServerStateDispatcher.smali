.class public interface abstract Landroid/media/IAudioServerStateDispatcher;
.super Ljava/lang/Object;
.source "IAudioServerStateDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioServerStateDispatcher$Stub;,
        Landroid/media/IAudioServerStateDispatcher$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchAudioServerStateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
