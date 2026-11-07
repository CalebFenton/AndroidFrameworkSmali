.class public interface abstract Landroid/media/IMediaSession2;
.super Ljava/lang/Object;
.source "IMediaSession2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaSession2$Stub;,
        Landroid/media/IMediaSession2$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaSession2"


# virtual methods
.method public abstract blacklist cancelSessionCommand(Landroid/media/Controller2Link;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disconnect(Landroid/media/Controller2Link;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
