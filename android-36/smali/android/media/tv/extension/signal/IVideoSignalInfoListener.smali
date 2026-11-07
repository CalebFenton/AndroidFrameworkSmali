.class public interface abstract Landroid/media/tv/extension/signal/IVideoSignalInfoListener;
.super Ljava/lang/Object;
.source "IVideoSignalInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Stub;,
        Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IVideoSignalInfoListener"


# virtual methods
.method public abstract blacklist onVideoSignalInfoChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
