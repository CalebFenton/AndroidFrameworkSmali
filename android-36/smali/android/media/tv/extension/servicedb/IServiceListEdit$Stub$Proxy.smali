.class Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;
.super Ljava/lang/Object;
.source "IServiceListEdit.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListEdit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 587
    return-void
.end method


# virtual methods
.method public blacklist addPredefinedChannelList(Ljava/lang/String;[Landroid/os/Bundle;)I
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "predefinedListBundle"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1001
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1002
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1006
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    nop

    .line 1009
    return v3

    .line 1006
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    throw v2
.end method

.method public blacklist addPredefinedSatInfo(Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "predefinedSatInfoBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1015
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1020
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1021
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1022
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1026
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    nop

    .line 1029
    return v3

    .line 1026
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v2
.end method

.method public blacklist addPredefinedServiceListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "broadcastType"    # I
    .param p2, "serviceListType"    # Ljava/lang/String;
    .param p3, "serviceListPrefix"    # Ljava/lang/String;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p5, "operatorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 982
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 986
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    nop

    .line 989
    return-object v3

    .line 986
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 590
    iget-object v0, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist close()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 624
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 628
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return v3

    .line 628
    .end local v3    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    throw v2
.end method

.method public blacklist commit()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 646
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    nop

    .line 649
    return v3

    .line 646
    .end local v3    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    throw v2
.end method

.method public blacklist getAllInstalledServiceListInfo()[Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1073
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1076
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1078
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1082
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    nop

    .line 1085
    return-object v3

    .line 1082
    .end local v3    # "_result":[Landroid/os/Bundle;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    throw v2
.end method

.method public blacklist getInstalledServiceListInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p1, "channelListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1060
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1061
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1064
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1066
    nop

    .line 1067
    return-object v3

    .line 1064
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1066
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 594
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    return-object v0
.end method

.method public blacklist getNetworkInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 896
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 897
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 900
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    nop

    .line 903
    return-object v3

    .line 900
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    throw v2
.end method

.method public blacklist getSatelliteInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 915
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 916
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 917
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 920
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    nop

    .line 923
    return-object v3

    .line 920
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw v2
.end method

.method public blacklist getServiceInfoFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceInfoId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 681
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 682
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 685
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    nop

    .line 688
    return-object v3

    .line 685
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    throw v2
.end method

.method public blacklist getServiceInfoIdsFromDatabase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "inServiceListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 720
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 724
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    nop

    .line 727
    return-object v3

    .line 724
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    throw v2
.end method

.method public blacklist getServiceInfoListFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 701
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 702
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 705
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 707
    nop

    .line 708
    return-object v3

    .line 705
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 707
    throw v2
.end method

.method public blacklist getServiceListChannelIds()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 815
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 819
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    nop

    .line 822
    return-object v3

    .line 819
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw v2
.end method

.method public blacklist getServiceListInfoByChannelId(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListChannelId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 835
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 836
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 839
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    nop

    .line 842
    return-object v3

    .line 839
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    throw v2
.end method

.method public blacklist getServiceLogoUri(I)Ljava/lang/String;
    .registers 7
    .param p1, "serviceRecordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1045
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    nop

    .line 1048
    return-object v3

    .line 1045
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw v2
.end method

.method public blacklist getTransportStreamInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 854
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 856
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 859
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return-object v3

    .line 859
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v2
.end method

.method public blacklist getTransportStreamInfoListForce(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 876
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 877
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 880
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    nop

    .line 883
    return-object v3

    .line 880
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v2
.end method

.method public blacklist open(Landroid/media/tv/extension/servicedb/IServiceListEditListener;)I
    .registers 7
    .param p1, "listener"    # Landroid/media/tv/extension/servicedb/IServiceListEditListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 605
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 606
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 610
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    nop

    .line 613
    return v3

    .line 610
    .end local v3    # "_result":I
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v2
.end method

.method public blacklist putRecordIdList(Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 9
    .param p1, "serviceListId"    # Ljava/lang/String;
    .param p2, "recordIdListBundle"    # Landroid/os/Bundle;
    .param p3, "optType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 956
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 958
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 962
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    nop

    .line 965
    return v3

    .line 962
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    throw v2
.end method

.method public blacklist removeServiceInfoByListFromDatabase([Ljava/lang/String;)I
    .registers 7
    .param p1, "serviceInfoIdList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 795
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 796
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 800
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    nop

    .line 803
    return v3

    .line 800
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v2
.end method

.method public blacklist removeServiceInfoFromDatabase(Ljava/lang/String;)I
    .registers 7
    .param p1, "serviceInfoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 777
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 781
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    nop

    .line 784
    return v3

    .line 781
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    throw v2
.end method

.method public blacklist toRecordInfoByType(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "recordInfoBundle"    # Landroid/os/Bundle;
    .param p2, "recordType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 936
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 937
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 941
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    nop

    .line 944
    return-object v3

    .line 941
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw v2
.end method

.method public blacklist updateServiceInfoByListFromDatabase([Landroid/os/Bundle;)I
    .registers 7
    .param p1, "updateServiceInfoList"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 756
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 757
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 762
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 764
    nop

    .line 765
    return v3

    .line 762
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 764
    throw v2
.end method

.method public blacklist updateServiceInfoFromDatabase(Landroid/os/Bundle;)I
    .registers 7
    .param p1, "updateServiceInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 738
    iget-object v3, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 739
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 743
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    nop

    .line 746
    return v3

    .line 743
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    throw v2
.end method

.method public blacklist userEditCommit()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 660
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 664
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    nop

    .line 667
    return v3

    .line 664
    .end local v3    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    throw v2
.end method
