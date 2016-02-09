.class Landroid/security/IKeystoreService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService$Stub;
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
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 606
    iput-object p1, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 604
    return-void
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "handle"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1302
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1307
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1310
    return v2

    #@27
    .line 1306
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1306
    throw v3
.end method

.method public addAuthToken([B)I
    .locals 6
    .param p1, "authToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 1338
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x21

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1343
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1346
    return v2

    #@27
    .line 1342
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1342
    throw v3
.end method

.method public addRngEntropy([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1049
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 1051
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x17

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1056
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1059
    return v2

    #@27
    .line 1055
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1055
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "purpose"    # I
    .param p4, "pruneable"    # Z
    .param p5, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p6, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.security.IKeystoreService"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 1205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1206
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1207
    if-eqz p4, :cond_0

    #@1b
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1208
    if-eqz p5, :cond_1

    #@20
    .line 1209
    const/4 v3, 0x1

    #@21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1210
    const/4 v3, 0x0

    #@25
    invoke-virtual {p5, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 1215
    :goto_1
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2b
    .line 1216
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v4, 0x1c

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@36
    .line 1218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 1219
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1226
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1229
    return-object v2

    #@4b
    :cond_0
    move v3, v4

    #@4c
    .line 1207
    goto :goto_0

    #@4d
    .line 1213
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 1225
    :catchall_0
    move-exception v3

    #@53
    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 1225
    throw v3

    #@5a
    .line 1222
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_2
.end method

.method public clear_uid(J)I
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1030
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 1031
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x16

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1036
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1039
    return v2

    #@27
    .line 1035
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1035
    throw v3
.end method

.method public del(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 681
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 682
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 687
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 690
    return v2

    #@29
    .line 686
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 686
    throw v3
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 993
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 994
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 995
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x14

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 1000
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1003
    return v2

    #@30
    .line 999
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 999
    throw v3
.end method

.method public exist(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 701
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 706
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 709
    return v2

    #@29
    .line 705
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 705
    throw v3
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1168
    if-eqz p3, :cond_0

    #@16
    .line 1169
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1170
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1175
    :goto_0
    if-eqz p4, :cond_1

    #@20
    .line 1176
    const/4 v3, 0x1

    #@21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1177
    const/4 v3, 0x0

    #@25
    invoke-virtual {p4, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 1182
    :goto_1
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v4, 0x1b

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 1185
    sget-object v3, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1192
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1195
    return-object v2

    #@48
    .line 1173
    :cond_0
    const/4 v3, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 1191
    :catchall_0
    move-exception v3

    #@4e
    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1191
    throw v3

    #@55
    .line 1180
    :cond_1
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1

    #@5a
    .line 1188
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Landroid/security/keymaster/ExportResult;
    goto :goto_2
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1270
    if-eqz p2, :cond_0

    #@13
    .line 1271
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1272
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1277
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1e
    .line 1278
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@21
    .line 1279
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x1e

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 1282
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1289
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1292
    return-object v2

    #@41
    .line 1275
    :cond_0
    const/4 v3, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 1288
    :catchall_0
    move-exception v3

    #@47
    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1288
    throw v3

    #@4e
    .line 1285
    :cond_1
    const/4 v2, 0x0

    #@4f
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # Landroid/security/KeystoreArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 831
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 832
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 833
    if-eqz p6, :cond_0

    #@1f
    .line 834
    const/4 v3, 0x1

    #@20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 835
    const/4 v3, 0x0

    #@24
    invoke-virtual {p6, v0, v3}, Landroid/security/KeystoreArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 840
    :goto_0
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v4, 0xc

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v2

    #@36
    .line 845
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 848
    return v2

    #@3d
    .line 838
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 844
    :catchall_0
    move-exception v3

    #@43
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 844
    throw v3
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1069
    if-eqz p2, :cond_1

    #@13
    .line 1070
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1071
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1076
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1e
    .line 1077
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1078
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1079
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v4, 0x18

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v2

    #@33
    .line 1082
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 1083
    invoke-virtual {p6, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 1087
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1090
    return v2

    #@43
    .line 1074
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@44
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 1086
    :catchall_0
    move-exception v3

    #@49
    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 1086
    throw v3
.end method

.method public get(Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 642
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 647
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 650
    return-object v2

    #@26
    .line 646
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@27
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 646
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 614
    const-string/jumbo v0, "android.security.IKeystoreService"

    #@3
    return-object v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1095
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1098
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1100
    if-eqz p2, :cond_1

    #@13
    .line 1101
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1102
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1107
    :goto_0
    if-eqz p3, :cond_2

    #@1d
    .line 1108
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1109
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1114
    :goto_1
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x19

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    .line 1117
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_0

    #@3a
    .line 1118
    invoke-virtual {p4, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 1122
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1125
    return v2

    #@44
    .line 1105
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@45
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 1121
    :catchall_0
    move-exception v3

    #@4a
    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 1121
    throw v3

    #@51
    .line 1112
    :cond_2
    const/4 v3, 0x0

    #@52
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@55
    goto :goto_1
.end method

.method public getState(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 624
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 629
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 632
    return v2

    #@26
    .line 628
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 628
    throw v3
.end method

.method public get_pubkey(Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 918
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 923
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 926
    return-object v2

    #@27
    .line 922
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@28
    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 922
    throw v3
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 974
    iget-object v4, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0x13

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 976
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 979
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 982
    return-wide v2

    #@27
    .line 978
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 978
    throw v4
.end method

.method public grant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 937
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x11

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 942
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 945
    return v2

    #@2a
    .line 941
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 941
    throw v3
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1135
    if-eqz p2, :cond_1

    #@13
    .line 1136
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1137
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1142
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1143
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@21
    .line 1144
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1145
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1146
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v4, 0x1a

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    .line 1149
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_0

    #@3c
    .line 1150
    invoke-virtual {p7, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 1154
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 1157
    return v2

    #@46
    .line 1140
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@47
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 1153
    :catchall_0
    move-exception v3

    #@4c
    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 1153
    throw v3
.end method

.method public import_key(Ljava/lang/String;[BII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 859
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 860
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 861
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0xd

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 866
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 869
    return v2

    #@30
    .line 865
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 865
    throw v3
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "item"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 662
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 663
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x3

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v2

    #@28
    .line 668
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 671
    return v2

    #@2f
    .line 667
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 667
    throw v3
.end method

.method public isEmpty(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 811
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 816
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 819
    return v2

    #@27
    .line 815
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 815
    throw v3
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1320
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x20

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1325
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1328
    return v2

    #@2a
    .line 1322
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1324
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1324
    throw v3
.end method

.method public is_hardware_backed(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1013
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1018
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1021
    return v2

    #@27
    .line 1017
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1017
    throw v3
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 720
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 725
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 728
    return-object v2

    #@29
    .line 724
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2a
    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 724
    throw v3
.end method

.method public lock(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 774
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 779
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 782
    return v2

    #@27
    .line 778
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 778
    throw v3
.end method

.method public onUserAdded(II)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1357
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x22

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 1362
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1365
    return v2

    #@2a
    .line 1361
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1361
    throw v3
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 756
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 761
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 764
    return v2

    #@2a
    .line 760
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 760
    throw v3
.end method

.method public onUserRemoved(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1375
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x23

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1380
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1383
    return v2

    #@27
    .line 1379
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1379
    throw v3
.end method

.method public reset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 737
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 742
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 745
    return v2

    #@23
    .line 741
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 741
    throw v3
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 880
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xe

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 885
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 888
    return-object v2

    #@2a
    .line 884
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@2b
    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 884
    throw v3
.end method

.method public ungrant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 956
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x12

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 961
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 964
    return v2

    #@2a
    .line 960
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 960
    throw v3
.end method

.method public unlock(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "userPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 793
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xa

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 798
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 801
    return v2

    #@2a
    .line 797
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 797
    throw v3
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1239
    if-eqz p2, :cond_0

    #@13
    .line 1240
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1241
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1246
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1e
    .line 1247
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x1d

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 1250
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1257
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1260
    return-object v2

    #@3e
    .line 1244
    :cond_0
    const/4 v3, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 1256
    :catchall_0
    move-exception v3

    #@44
    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1256
    throw v3

    #@4b
    .line 1253
    :cond_1
    const/4 v2, 0x0

    #@4c
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public verify(Ljava/lang/String;[B[B)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 898
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 899
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@17
    .line 900
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xf

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 905
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 908
    return v2

    #@2d
    .line 904
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 904
    throw v3
.end method
