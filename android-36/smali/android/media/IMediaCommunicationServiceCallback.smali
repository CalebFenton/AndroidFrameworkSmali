.class public interface abstract Landroid/media/IMediaCommunicationServiceCallback;
.super Ljava/lang/Object;
.source "IMediaCommunicationServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaCommunicationServiceCallback$Stub;,
        Landroid/media/IMediaCommunicationServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaCommunicationServiceCallback"


# virtual methods
.method public abstract blacklist onSession2Changed(Landroid/media/MediaParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSession2Created(Landroid/media/Session2Token;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
