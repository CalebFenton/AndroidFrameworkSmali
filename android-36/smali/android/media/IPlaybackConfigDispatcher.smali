.class public interface abstract Landroid/media/IPlaybackConfigDispatcher;
.super Ljava/lang/Object;
.source "IPlaybackConfigDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlaybackConfigDispatcher$Stub;,
        Landroid/media/IPlaybackConfigDispatcher$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
