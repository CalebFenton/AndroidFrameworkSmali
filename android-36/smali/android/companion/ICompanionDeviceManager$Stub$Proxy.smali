.class Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager$Stub;
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

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 870
    return-void
.end method


# virtual methods
.method public blacklist addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1140
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1143
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1143
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw v2
.end method

.method public blacklist addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 8
    .param p1, "messageType"    # I
    .param p2, "listener"    # Landroid/companion/IOnMessageReceivedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1212
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1218
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1222
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    nop

    .line 1225
    return-void

    .line 1222
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    throw v2
.end method

.method public blacklist addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/companion/IOnTransportsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1170
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    nop

    .line 1177
    return-void

    .line 1174
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    throw v2
.end method

.method public blacklist applyRestoredPayload([BI)V
    .registers 8
    .param p1, "payload"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1535
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1542
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1545
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    nop

    .line 1548
    return-void

    .line 1545
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 873
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .registers 10
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 890
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 893
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    nop

    .line 896
    return-void

    .line 893
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    throw v2
.end method

.method public blacklist attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1332
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1340
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 1345
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1347
    nop

    .line 1348
    return-void

    .line 1345
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1347
    throw v2
.end method

.method public blacklist buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1395
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1396
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 1399
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    nop

    .line 1402
    return-object v3

    .line 1399
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    throw v2
.end method

.method public blacklist buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1283
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1284
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1287
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    nop

    .line 1290
    return-object v3

    .line 1287
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    throw v2
.end method

.method public blacklist canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1104
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1105
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1108
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1110
    nop

    .line 1111
    return v3

    .line 1108
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1110
    throw v2
.end method

.method public blacklist createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1123
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1127
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1127
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    throw v2
.end method

.method public blacklist detachSystemDataTransport(Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1359
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1362
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1364
    nop

    .line 1365
    return-void

    .line 1362
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1364
    throw v2
.end method

.method public blacklist disablePermissionsSync(I)V
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1462
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    throw v2
.end method

.method public blacklist disableSystemDataSync(II)V
    .registers 8
    .param p1, "associationId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1429
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1432
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    nop

    .line 1435
    return-void

    .line 1432
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    throw v2
.end method

.method public blacklist disassociate(I)V
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 960
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 963
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    nop

    .line 966
    return-void

    .line 963
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    throw v2
.end method

.method public blacklist enablePermissionsSync(I)V
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1444
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1447
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1449
    nop

    .line 1450
    return-void

    .line 1447
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1449
    throw v2
.end method

.method public blacklist enableSecureTransport(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1491
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1492
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1495
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1495
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1497
    throw v2
.end method

.method public blacklist enableSystemDataSync(II)V
    .registers 8
    .param p1, "associationId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1416
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    nop

    .line 1419
    return-void

    .line 1416
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    throw v2
.end method

.method public blacklist getAllAssociationsForUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 925
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    sget-object v3, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 929
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    nop

    .line 932
    return-object v3

    .line 929
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw v2
.end method

.method public greylist-max-o getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 907
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 908
    sget-object v3, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 911
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    nop

    .line 914
    return-object v3

    .line 911
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    throw v2
.end method

.method public blacklist getBackupPayload(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1525
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1528
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1530
    nop

    .line 1531
    return-object v3

    .line 1528
    .end local v3    # "_result":[B
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1530
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 877
    const-string v0, "android.companion.ICompanionDeviceManager"

    return-object v0
.end method

.method public blacklist getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1476
    sget-object v3, Landroid/companion/datatransfer/PermissionSyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/datatransfer/PermissionSyncRequest;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1479
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/companion/datatransfer/PermissionSyncRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    nop

    .line 1482
    return-object v3

    .line 1479
    .end local v3    # "_result":Landroid/companion/datatransfer/PermissionSyncRequest;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    throw v2
.end method

.method public greylist-max-o hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 976
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 977
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 981
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    nop

    .line 984
    return v3

    .line 981
    .end local v3    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    throw v2
.end method

.method public blacklist isCompanionApplicationBound(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1380
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    nop

    .line 1383
    return v3

    .line 1380
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    throw v2
.end method

.method public blacklist isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1016
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1020
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1022
    nop

    .line 1023
    return v3

    .line 1020
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1022
    throw v2
.end method

.method public blacklist isPermissionTransferUserConsented(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1307
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    nop

    .line 1310
    return v3

    .line 1307
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    throw v2
.end method

.method public blacklist legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 945
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 948
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    nop

    .line 951
    return-void

    .line 948
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw v2
.end method

.method public blacklist legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1035
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1038
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1040
    nop

    .line 1041
    return-void

    .line 1038
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1040
    throw v2
.end method

.method public blacklist legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1044
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1052
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1055
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    nop

    .line 1058
    return-void

    .line 1055
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    throw v2
.end method

.method public blacklist notifySelfManagedDeviceAppeared(I)V
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1250
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1253
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    nop

    .line 1256
    return-void

    .line 1253
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    throw v2
.end method

.method public blacklist notifySelfManagedDeviceDisappeared(I)V
    .registers 7
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1265
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1268
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1270
    nop

    .line 1271
    return-void

    .line 1268
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1270
    throw v2
.end method

.method public blacklist removeBond(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "associationId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1564
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    nop

    .line 1567
    return v3

    .line 1564
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw v2
.end method

.method public blacklist removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1156
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1159
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    nop

    .line 1162
    return-void

    .line 1159
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    throw v2
.end method

.method public blacklist removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 8
    .param p1, "messageType"    # I
    .param p2, "listener"    # Landroid/companion/IOnMessageReceivedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1234
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1235
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1238
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    nop

    .line 1241
    return-void

    .line 1238
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    throw v2
.end method

.method public blacklist removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/companion/IOnTransportsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1185
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1186
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1189
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    nop

    .line 1192
    return-void

    .line 1189
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    throw v2
.end method

.method public blacklist requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 989
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 992
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 994
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 996
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 997
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1000
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    nop

    .line 1003
    return-object v3

    .line 1000
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v2
.end method

.method public blacklist sendMessage(I[B[I)V
    .registers 9
    .param p1, "messageType"    # I
    .param p2, "data"    # [B
    .param p3, "associationIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1202
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1203
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1206
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1208
    nop

    .line 1209
    return-void

    .line 1206
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1208
    throw v2
.end method

.method public blacklist setDeviceId(ILandroid/companion/DeviceId;)V
    .registers 8
    .param p1, "associationId"    # I
    .param p2, "deviceId"    # Landroid/companion/DeviceId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1507
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1508
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1511
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    nop

    .line 1514
    return-void

    .line 1511
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    throw v2
.end method

.method public blacklist startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 9
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1069
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1072
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    nop

    .line 1075
    return-void

    .line 1072
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    throw v2
.end method

.method public blacklist startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .param p4, "callback"    # Landroid/companion/ISystemDataTransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1322
    iget-object v2, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1323
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1326
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1328
    nop

    .line 1329
    return-void

    .line 1326
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1328
    throw v2
.end method

.method public blacklist stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 9
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1079
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.companion.ICompanionDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget-object v3, p0, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1086
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1089
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    nop

    .line 1092
    return-void

    .line 1089
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    throw v2
.end method
