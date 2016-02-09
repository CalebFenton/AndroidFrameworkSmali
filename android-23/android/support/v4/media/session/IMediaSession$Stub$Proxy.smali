.class Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 421
    iput-object p1, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 419
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 634
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 635
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xb

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 626
    return-void

    #@29
    .line 638
    :catchall_0
    move-exception v2

    #@2a
    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 638
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public fastForward()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 825
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x16

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 819
    return-void

    #@20
    .line 828
    :catchall_0
    move-exception v2

    #@21
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 828
    throw v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 995
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1f

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 998
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1005
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1008
    return-object v2

    #@2e
    .line 1001
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    #@30
    .line 1004
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@31
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1004
    throw v3
.end method

.method public getFlags()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 594
    iget-object v4, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x9

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 599
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 602
    return-wide v2

    #@24
    .line 598
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 598
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 429
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    #@3
    return-object v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 572
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 575
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 582
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 585
    return-object v2

    #@2e
    .line 578
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/app/PendingIntent;
    goto :goto_0

    #@30
    .line 581
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    #@31
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 581
    throw v3
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 912
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 915
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 922
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 925
    return-object v2

    #@2e
    .line 918
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_0

    #@30
    .line 921
    .end local v2    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :catchall_0
    move-exception v3

    #@31
    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 921
    throw v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 538
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 543
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 546
    return-object v2

    #@23
    .line 542
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 542
    throw v3
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 934
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 937
    sget-object v3, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 944
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 947
    return-object v2

    #@2e
    .line 940
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_0

    #@30
    .line 943
    .end local v2    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :catchall_0
    move-exception v3

    #@31
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 943
    throw v3
.end method

.method public getQueue()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 956
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 958
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 961
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 964
    return-object v2

    #@26
    .line 960
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 960
    throw v3
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 973
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1e

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 976
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 983
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 986
    return-object v2

    #@2e
    .line 979
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Ljava/lang/CharSequence;
    goto :goto_0

    #@30
    .line 982
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@31
    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 982
    throw v3
.end method

.method public getRatingType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1017
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x20

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1022
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1025
    return v2

    #@24
    .line 1021
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1021
    throw v3
.end method

.method public getTag()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 555
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 560
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 563
    return-object v2

    #@23
    .line 559
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 559
    throw v3
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 611
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 614
    sget-object v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 621
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 624
    return-object v2

    #@2e
    .line 617
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_0

    #@30
    .line 620
    .end local v2    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 620
    throw v3
.end method

.method public isTransportControlEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 521
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 526
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 529
    return v2

    #@26
    .line 523
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 525
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 525
    throw v3
.end method

.method public next()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 797
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x14

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 791
    return-void

    #@20
    .line 800
    :catchall_0
    move-exception v2

    #@21
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 800
    throw v2
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 769
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x12

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 763
    return-void

    #@20
    .line 772
    :catchall_0
    move-exception v2

    #@21
    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 772
    throw v2
.end method

.method public play()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 668
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xd

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 662
    return-void

    #@20
    .line 671
    :catchall_0
    move-exception v2

    #@21
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 671
    throw v2
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 683
    if-eqz p2, :cond_0

    #@13
    .line 684
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 685
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 690
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xe

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 676
    return-void

    #@2d
    .line 688
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 693
    :catchall_0
    move-exception v2

    #@33
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 693
    throw v2
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 705
    if-eqz p2, :cond_0

    #@13
    .line 706
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 707
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 712
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xf

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 698
    return-void

    #@2d
    .line 710
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 715
    :catchall_0
    move-exception v2

    #@33
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 715
    throw v2
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 726
    if-eqz p1, :cond_0

    #@10
    .line 727
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 728
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 733
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 734
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 735
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 740
    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x10

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 720
    return-void

    #@34
    .line 731
    :cond_0
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 743
    :catchall_0
    move-exception v2

    #@3a
    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 743
    throw v2

    #@41
    .line 738
    :cond_1
    const/4 v2, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.method public previous()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 811
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x15

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 805
    return-void

    #@20
    .line 814
    :catchall_0
    move-exception v2

    #@21
    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 814
    throw v2
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 5
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 868
    if-eqz p1, :cond_0

    #@10
    .line 869
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 870
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 875
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x19

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 862
    return-void

    #@2a
    .line 873
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 878
    :catchall_0
    move-exception v2

    #@30
    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 878
    throw v2
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 490
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 491
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 484
    return-void

    #@29
    .line 494
    :catchall_0
    move-exception v2

    #@2a
    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 494
    throw v2
.end method

.method public rewind()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 839
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x17

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 833
    return-void

    #@20
    .line 842
    :catchall_0
    move-exception v2

    #@21
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 842
    throw v2
.end method

.method public seekTo(J)V
    .locals 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 853
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 854
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x18

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 847
    return-void

    #@23
    .line 857
    :catchall_0
    move-exception v2

    #@24
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 857
    throw v2
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 438
    if-eqz p2, :cond_0

    #@13
    .line 439
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 440
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 445
    :goto_0
    if-eqz p3, :cond_1

    #@1d
    .line 446
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 447
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 452
    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x1

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 431
    return-void

    #@36
    .line 443
    :cond_0
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 455
    :catchall_0
    move-exception v2

    #@3c
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 455
    throw v2

    #@43
    .line 450
    :cond_1
    const/4 v2, 0x0

    #@44
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 890
    if-eqz p2, :cond_0

    #@13
    .line 891
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 892
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 897
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1a

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 883
    return-void

    #@2d
    .line 895
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 900
    :catchall_0
    move-exception v2

    #@33
    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 900
    throw v2
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 467
    if-eqz p1, :cond_0

    #@10
    .line 468
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 469
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 474
    :goto_0
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x2

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 479
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 482
    return v2

    #@30
    .line 472
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 478
    :catchall_0
    move-exception v3

    #@36
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 478
    throw v3

    #@3d
    .line 476
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 651
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 652
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xc

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 643
    return-void

    #@29
    .line 655
    :catchall_0
    move-exception v2

    #@2a
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 655
    throw v2
.end method

.method public skipToQueueItem(J)V
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 754
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 755
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x11

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 748
    return-void

    #@23
    .line 758
    :catchall_0
    move-exception v2

    #@24
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 758
    throw v2
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.support.v4.media.session.IMediaSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 783
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x13

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 777
    return-void

    #@20
    .line 786
    :catchall_0
    move-exception v2

    #@21
    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 786
    throw v2
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 505
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 506
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 499
    return-void

    #@29
    .line 509
    :catchall_0
    move-exception v2

    #@2a
    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 509
    throw v2
.end method
