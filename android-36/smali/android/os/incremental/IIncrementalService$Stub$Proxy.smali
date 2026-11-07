.class Landroid/os/incremental/IIncrementalService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalService$Stub;
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

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 649
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 652
    iget-object v0, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "storageId"    # I
    .param p2, "apkFullPath"    # Ljava/lang/String;
    .param p3, "libDirRelativePath"    # Ljava/lang/String;
    .param p4, "abi"    # Ljava/lang/String;
    .param p5, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1092
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1093
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 1097
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    nop

    .line 1100
    return v3

    .line 1097
    .end local v3    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v2
.end method

.method public blacklist createLinkedStorage(Ljava/lang/String;II)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "otherStorageId"    # I
    .param p3, "createMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 712
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 714
    nop

    .line 715
    return v3

    .line 712
    .end local v3    # "_result":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 714
    throw v2
.end method

.method public blacklist createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "createMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 680
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget-object v3, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 688
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 692
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    nop

    .line 695
    return v3

    .line 692
    .end local v3    # "_result":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v2
.end method

.method public blacklist deleteBindMount(ILjava/lang/String;)I
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "targetFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 789
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 793
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    nop

    .line 796
    return v3

    .line 793
    .end local v3    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    throw v2
.end method

.method public blacklist deleteStorage(I)V
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1056
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1059
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    nop

    .line 1062
    return-void

    .line 1059
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    throw v2
.end method

.method public blacklist disallowReadLogs(I)V
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1072
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1075
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1077
    nop

    .line 1078
    return-void

    .line 1075
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1077
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 656
    const-string v0, "android.os.incremental.IIncrementalService"

    return-object v0
.end method

.method public blacklist getLoadingProgress(I)F
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 999
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1003
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    nop

    .line 1006
    return v3

    .line 1003
    .end local v3    # "_result":F
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    throw v2
.end method

.method public blacklist getMetadataById(I[B)[B
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "fileId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1037
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1038
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1042
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    nop

    .line 1045
    return-object v3

    .line 1042
    .end local v3    # "_result":[B
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    throw v2
.end method

.method public blacklist getMetadataByPath(ILjava/lang/String;)[B
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1012
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1019
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1023
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    nop

    .line 1026
    return-object v3

    .line 1023
    .end local v3    # "_result":[B
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    throw v2
.end method

.method public blacklist getMetrics(I)Landroid/os/PersistableBundle;
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1170
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1171
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1174
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    nop

    .line 1177
    return-object v3

    .line 1174
    .end local v3    # "_result":Landroid/os/PersistableBundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    throw v2
.end method

.method public blacklist isFileFullyLoaded(ILjava/lang/String;)I
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 946
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 953
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 957
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    nop

    .line 960
    return v3

    .line 957
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    throw v2
.end method

.method public blacklist isFullyLoaded(I)I
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 977
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 981
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    nop

    .line 984
    return v3

    .line 981
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    throw v2
.end method

.method public blacklist makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "storageId"    # I
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "targetFullPath"    # Ljava/lang/String;
    .param p4, "bindType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 769
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 773
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    nop

    .line 776
    return v3

    .line 773
    .end local v3    # "_result":I
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    throw v2
.end method

.method public blacklist makeDirectories(ILjava/lang/String;)I
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 832
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 836
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    nop

    .line 839
    return v3

    .line 836
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    throw v2
.end method

.method public blacklist makeDirectory(ILjava/lang/String;)I
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 813
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    nop

    .line 816
    return v3

    .line 813
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    throw v2
.end method

.method public blacklist makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I
    .registers 11
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "params"    # Landroid/os/incremental/IncrementalNewFileParams;
    .param p5, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 853
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 854
    iget-object v3, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 859
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return v3

    .line 859
    .end local v3    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v2
.end method

.method public blacklist makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I
    .registers 13
    .param p1, "storageId"    # I
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .param p4, "start"    # J
    .param p6, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 879
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 880
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 881
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 885
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    nop

    .line 888
    return v3

    .line 885
    .end local v3    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    throw v2
.end method

.method public blacklist makeLink(ILjava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "sourceStorageId"    # I
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "destStorageId"    # I
    .param p4, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 912
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    nop

    .line 915
    return v3

    .line 912
    .end local v3    # "_result":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    throw v2
.end method

.method public blacklist onInstallationComplete(I)V
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 750
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 753
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    nop

    .line 756
    return-void

    .line 753
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    throw v2
.end method

.method public blacklist openStorage(Ljava/lang/String;)I
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 668
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 672
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    nop

    .line 675
    return v3

    .line 672
    .end local v3    # "_result":I
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    throw v2
.end method

.method public blacklist registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "listener"    # Landroid/os/incremental/IStorageLoadingProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1131
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1136
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1138
    nop

    .line 1139
    return v3

    .line 1136
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1138
    throw v2
.end method

.method public blacklist startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .registers 12
    .param p1, "storageId"    # I
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p4, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p5, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p6, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 727
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 728
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 729
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 730
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 731
    iget-object v3, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 732
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 736
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    nop

    .line 739
    return v3

    .line 736
    .end local v3    # "_result":Z
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw v2
.end method

.method public blacklist unlink(ILjava/lang/String;)I
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 921
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 928
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 932
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    nop

    .line 935
    return v3

    .line 932
    .end local v3    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    throw v2
.end method

.method public blacklist unregisterLoadingProgressListener(I)Z
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1151
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1155
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1157
    nop

    .line 1158
    return v3

    .line 1155
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1157
    throw v2
.end method

.method public blacklist waitForNativeBinariesExtraction(I)Z
    .registers 7
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.incremental.IIncrementalService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget-object v2, p0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1112
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1116
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1118
    nop

    .line 1119
    return v3

    .line 1116
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1118
    throw v2
.end method
