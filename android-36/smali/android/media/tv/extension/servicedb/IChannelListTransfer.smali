.class public interface abstract Landroid/media/tv/extension/servicedb/IChannelListTransfer;
.super Ljava/lang/Object;
.source "IChannelListTransfer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IChannelListTransfer$Stub;,
        Landroid/media/tv/extension/servicedb/IChannelListTransfer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IChannelListTransfer"


# virtual methods
.method public abstract blacklist exportChannelList(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist importChannelList(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
