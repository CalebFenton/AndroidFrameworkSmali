.class public Landroid/media/tv/extension/scan/ILcnV2ChannelList$Default;
.super Ljava/lang/Object;
.source "ILcnV2ChannelList.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ILcnV2ChannelList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ILcnV2ChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLcnV2ChannelLists()[Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setLcnV2ChannelList(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "lcnV2ChannelListSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setListener(Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method
