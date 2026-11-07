.class public interface abstract Landroid/media/tv/extension/scan/ILcnV2ChannelList;
.super Ljava/lang/Object;
.source "ILcnV2ChannelList.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;,
        Landroid/media/tv/extension/scan/ILcnV2ChannelList$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnV2ChannelList"


# virtual methods
.method public abstract blacklist getLcnV2ChannelLists()[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setLcnV2ChannelList(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
