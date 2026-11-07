.class public interface abstract Landroid/media/IAudioRoutesObserver;
.super Ljava/lang/Object;
.source "IAudioRoutesObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioRoutesObserver$Stub;,
        Landroid/media/IAudioRoutesObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
