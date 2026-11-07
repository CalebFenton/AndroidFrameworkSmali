.class public interface abstract Landroid/media/tv/extension/tune/IChannelTunedInterface;
.super Ljava/lang/Object;
.source "IChannelTunedInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/tune/IChannelTunedInterface$Stub;,
        Landroid/media/tv/extension/tune/IChannelTunedInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.tune.IChannelTunedInterface"


# virtual methods
.method public abstract blacklist addChannelTunedListener(Landroid/media/tv/extension/tune/IChannelTunedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeChannelTunedListener(Landroid/media/tv/extension/tune/IChannelTunedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
