.class public interface abstract Landroid/media/tv/extension/tune/IChannelTunedListener;
.super Ljava/lang/Object;
.source "IChannelTunedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/tune/IChannelTunedListener$Stub;,
        Landroid/media/tv/extension/tune/IChannelTunedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.tune.IChannelTunedListener"


# virtual methods
.method public abstract blacklist onChannelTuned(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
