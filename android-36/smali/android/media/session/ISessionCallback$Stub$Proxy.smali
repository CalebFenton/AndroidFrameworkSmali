.class Landroid/media/session/ISessionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 602
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 605
    iget-object v0, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 609
    const-string v0, "android.media.session.ISessionCallback"

    return-object v0
.end method

.method public blacklist onAdjustVolume(Ljava/lang/String;III)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    nop

    .line 960
    return-void

    .line 958
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    throw v1
.end method

.method public blacklist onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 621
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 622
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2c

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    nop

    .line 627
    return-void

    .line 625
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    throw v1
.end method

.method public blacklist onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 933
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 939
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    nop

    .line 944
    return-void

    .line 942
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw v1
.end method

.method public blacklist onFastForward(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    nop

    .line 869
    return-void

    .line 867
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    throw v1
.end method

.method public greylist-max-o onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p5, "sequenceNumber"    # I
    .param p6, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 632
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 637
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 639
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2d

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    nop

    .line 644
    return-void

    .line 642
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    throw v1
.end method

.method public blacklist onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaButtonIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 649
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 654
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    nop

    .line 659
    return-void

    .line 657
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw v1
.end method

.method public blacklist onNext(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    nop

    .line 841
    return-void

    .line 839
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    throw v1
.end method

.method public blacklist onPause(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 804
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    nop

    .line 813
    return-void

    .line 811
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw v1
.end method

.method public blacklist onPlay(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    nop

    .line 736
    return-void

    .line 734
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    throw v1
.end method

.method public blacklist onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 747
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    throw v1
.end method

.method public blacklist onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 763
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    nop

    .line 768
    return-void

    .line 766
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    throw v1
.end method

.method public blacklist onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 773
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 778
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 779
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    throw v1
.end method

.method public blacklist onPrepare(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 674
    return-void

    .line 672
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v1
.end method

.method public blacklist onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 685
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    nop

    .line 690
    return-void

    .line 688
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    throw v1
.end method

.method public blacklist onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 701
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    nop

    .line 706
    return-void

    .line 704
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    throw v1
.end method

.method public blacklist onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 711
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-void

    .line 720
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v1
.end method

.method public blacklist onPrevious(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 846
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    nop

    .line 855
    return-void

    .line 853
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    throw v1
.end method

.method public blacklist onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rating"    # Landroid/media/Rating;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 908
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw v1
.end method

.method public blacklist onRewind(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 874
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v1
.end method

.method public blacklist onSeekTo(Ljava/lang/String;IIJ)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 893
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    nop

    .line 898
    return-void

    .line 896
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    throw v1
.end method

.method public blacklist onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 923
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    throw v1
.end method

.method public blacklist onSetVolumeTo(Ljava/lang/String;III)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 965
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    nop

    .line 975
    return-void

    .line 973
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v1
.end method

.method public blacklist onSkipToTrack(Ljava/lang/String;IIJ)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 789
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 794
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    nop

    .line 799
    return-void

    .line 797
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    throw v1
.end method

.method public blacklist onStop(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 818
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.session.ISessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    nop

    .line 827
    return-void

    .line 825
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    throw v1
.end method
