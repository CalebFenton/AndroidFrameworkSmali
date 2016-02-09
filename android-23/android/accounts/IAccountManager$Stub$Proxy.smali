.class Landroid/accounts/IAccountManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager$Stub;
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
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 657
    iput-object p1, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 655
    return-void
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
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
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1301
    if-eqz p1, :cond_0

    #@10
    .line 1302
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1303
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1308
    :goto_0
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x1c

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 1313
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1316
    return v2

    #@31
    .line 1306
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1312
    :catchall_0
    move-exception v3

    #@37
    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1312
    throw v3

    #@3e
    .line 1310
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1168
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 1170
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 1171
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@23
    .line 1172
    if-eqz p5, :cond_1

    #@25
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1173
    if-eqz p6, :cond_2

    #@2a
    .line 1174
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1175
    const/4 v2, 0x0

    #@2f
    invoke-virtual {p6, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 1180
    :goto_1
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@34
    const/16 v3, 0x17

    #@36
    const/4 v4, 0x0

    #@37
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3a
    .line 1181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1162
    return-void

    #@44
    :cond_1
    move v2, v3

    #@45
    .line 1172
    goto :goto_0

    #@46
    .line 1178
    :cond_2
    const/4 v2, 0x0

    #@47
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 1183
    :catchall_0
    move-exception v2

    #@4c
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 1183
    throw v2
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1194
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 1196
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 1197
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@23
    .line 1198
    if-eqz p5, :cond_1

    #@25
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1199
    if-eqz p6, :cond_2

    #@2a
    .line 1200
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1201
    const/4 v2, 0x0

    #@2f
    invoke-virtual {p6, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 1206
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1207
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/16 v3, 0x18

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1188
    return-void

    #@47
    :cond_1
    move v2, v3

    #@48
    .line 1198
    goto :goto_0

    #@49
    .line 1204
    :cond_2
    const/4 v2, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 1210
    :catchall_0
    move-exception v2

    #@4f
    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 1210
    throw v2
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 856
    if-eqz p1, :cond_0

    #@10
    .line 857
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 858
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 863
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 864
    if-eqz p3, :cond_1

    #@1d
    .line 865
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 866
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 871
    :goto_1
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0xa

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    const/4 v2, 0x1

    #@37
    .line 876
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 879
    return v2

    #@3e
    .line 861
    .end local v2    # "_result":Z
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
    .line 875
    :catchall_0
    move-exception v3

    #@44
    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 875
    throw v3

    #@4b
    .line 869
    :cond_1
    const/4 v3, 0x0

    #@4c
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_1

    #@50
    .line 873
    :cond_2
    const/4 v2, 0x0

    #@51
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1343
    if-eqz p1, :cond_0

    #@10
    .line 1344
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1345
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1350
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1351
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x1e

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 1356
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1359
    return v2

    #@34
    .line 1348
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1355
    :catchall_0
    move-exception v3

    #@3a
    .line 1356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1355
    throw v3

    #@41
    .line 1353
    :cond_1
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 661
    iget-object v0, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1068
    if-eqz p1, :cond_0

    #@10
    .line 1069
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1070
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1075
    :goto_0
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x13

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1062
    return-void

    #@2a
    .line 1073
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
    .line 1078
    :catchall_0
    move-exception v2

    #@30
    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1078
    throw v2
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1269
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1270
    if-eqz p2, :cond_1

    #@1c
    .line 1271
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1272
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1277
    :goto_0
    if-eqz p3, :cond_2

    #@26
    .line 1278
    const/4 v4, 0x1

    #@27
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1279
    const/4 v4, 0x0

    #@2b
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 1284
    :goto_1
    if-eqz p4, :cond_3

    #@30
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1285
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 1286
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/16 v3, 0x1b

    #@3a
    const/4 v4, 0x0

    #@3b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3e
    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1263
    return-void

    #@48
    .line 1275
    :cond_1
    const/4 v4, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 1289
    :catchall_0
    move-exception v2

    #@4e
    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1289
    throw v2

    #@55
    .line 1282
    :cond_2
    const/4 v4, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1

    #@5a
    :cond_3
    move v2, v3

    #@5b
    .line 1284
    goto :goto_2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 958
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 959
    if-eqz p2, :cond_1

    #@1a
    .line 960
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 961
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 966
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 967
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 968
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0xe

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 952
    return-void

    #@3a
    .line 964
    :cond_1
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 971
    :catchall_0
    move-exception v2

    #@40
    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 971
    throw v2
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accounts.IAccountManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1252
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1253
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 1254
    if-eqz p3, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1255
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x1a

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1246
    return-void

    #@34
    .line 1258
    :catchall_0
    move-exception v2

    #@35
    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 1258
    throw v2
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 742
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 744
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 747
    .local v2, "_result":[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 750
    return-object v2

    #@2a
    .line 746
    .end local v2    # "_result":[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    #@2b
    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 746
    throw v3
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 799
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x7

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 801
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 804
    .local v2, "_result":[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 807
    return-object v2

    #@2d
    .line 803
    .end local v2    # "_result":[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    #@2e
    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 803
    throw v3
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 838
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 840
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1e
    .line 841
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x9

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 832
    return-void

    #@30
    .line 844
    :catchall_0
    move-exception v2

    #@31
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 844
    throw v2
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 780
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 782
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 785
    .local v2, "_result":[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 788
    return-object v2

    #@2d
    .line 784
    .end local v2    # "_result":[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    #@2e
    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 784
    throw v3
.end method

.method public getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 760
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 761
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 763
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 766
    .local v2, "_result":[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 769
    return-object v2

    #@2d
    .line 765
    .end local v2    # "_result":[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    #@2e
    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 765
    throw v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1136
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1137
    if-eqz p2, :cond_1

    #@1c
    .line 1138
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1139
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1144
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 1145
    if-eqz p4, :cond_2

    #@29
    move v4, v2

    #@2a
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1146
    if-eqz p5, :cond_3

    #@2f
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1147
    if-eqz p6, :cond_4

    #@34
    .line 1148
    const/4 v2, 0x1

    #@35
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1149
    const/4 v2, 0x0

    #@39
    invoke-virtual {p6, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@3c
    .line 1154
    :goto_3
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3e
    const/16 v3, 0x16

    #@40
    const/4 v4, 0x0

    #@41
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@44
    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1130
    return-void

    #@4e
    .line 1142
    :cond_1
    const/4 v4, 0x0

    #@4f
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1157
    :catchall_0
    move-exception v2

    #@54
    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5a
    .line 1157
    throw v2

    #@5b
    :cond_2
    move v4, v3

    #@5c
    .line 1145
    goto :goto_1

    #@5d
    :cond_3
    move v2, v3

    #@5e
    .line 1146
    goto :goto_2

    #@5f
    .line 1152
    :cond_4
    const/4 v2, 0x0

    #@60
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_3
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1324
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1325
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1326
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1327
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x1d

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1318
    return-void

    #@30
    .line 1330
    :catchall_0
    move-exception v2

    #@31
    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1330
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 724
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 726
    sget-object v3, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 729
    .local v2, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 732
    return-object v2

    #@2a
    .line 728
    .end local v2    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :catchall_0
    move-exception v3

    #@2b
    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 728
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 665
    const-string/jumbo v0, "android.accounts.IAccountManager"

    #@3
    return-object v0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 674
    if-eqz p1, :cond_0

    #@10
    .line 675
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 676
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 681
    :goto_0
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 686
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 689
    return-object v2

    #@2d
    .line 679
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 685
    :catchall_0
    move-exception v3

    #@33
    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 685
    throw v3
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1435
    if-eqz p1, :cond_0

    #@10
    .line 1436
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1437
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1442
    :goto_0
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x22

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 1447
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1450
    return-object v2

    #@2e
    .line 1440
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 1446
    :catchall_0
    move-exception v3

    #@34
    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1446
    throw v3
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1369
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1371
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1374
    .local v2, "_result":[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1377
    return-object v2

    #@2b
    .line 1373
    .end local v2    # "_result":[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    #@2c
    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1373
    throw v3
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 698
    if-eqz p1, :cond_0

    #@10
    .line 699
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 700
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 705
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 706
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v2

    #@29
    .line 711
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 714
    return-object v2

    #@30
    .line 703
    .end local v2    # "_result":Ljava/lang/String;
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
    .line 710
    :catchall_0
    move-exception v3

    #@36
    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 710
    throw v3
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 815
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 816
    if-eqz p2, :cond_1

    #@1a
    .line 817
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 818
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 823
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@25
    .line 824
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x8

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 809
    return-void

    #@37
    .line 821
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 827
    :catchall_0
    move-exception v2

    #@3d
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 827
    throw v2
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 979
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 981
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 982
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 983
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 984
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 976
    return-void

    #@26
    .line 987
    :catchall_0
    move-exception v2

    #@27
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 987
    throw v2
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 999
    if-eqz p1, :cond_0

    #@10
    .line 1000
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1001
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1006
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1007
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x10

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 1012
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1015
    return-object v2

    #@31
    .line 1004
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1011
    :catchall_0
    move-exception v3

    #@37
    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1011
    throw v3
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 884
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 887
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 888
    if-eqz p2, :cond_1

    #@1c
    .line 889
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 890
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 895
    :goto_0
    if-eqz p3, :cond_2

    #@26
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 896
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0xb

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 881
    return-void

    #@3b
    .line 893
    :cond_1
    const/4 v4, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 899
    :catchall_0
    move-exception v2

    #@41
    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 899
    throw v2

    #@48
    :cond_2
    move v2, v3

    #@49
    .line 895
    goto :goto_1
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 910
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 911
    if-eqz p2, :cond_1

    #@1c
    .line 912
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 913
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 918
    :goto_0
    if-eqz p3, :cond_2

    #@26
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 919
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 920
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2e
    const/16 v3, 0xc

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 904
    return-void

    #@3e
    .line 916
    :cond_1
    const/4 v4, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 923
    :catchall_0
    move-exception v2

    #@44
    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 923
    throw v2

    #@4b
    :cond_2
    move v2, v3

    #@4c
    .line 918
    goto :goto_1
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
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
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 935
    if-eqz p1, :cond_0

    #@10
    .line 936
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 937
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 942
    :goto_0
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 947
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 950
    return v2

    #@31
    .line 940
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 946
    :catchall_0
    move-exception v3

    #@37
    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 946
    throw v3

    #@3e
    .line 944
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1386
    if-eqz p1, :cond_0

    #@10
    .line 1387
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1388
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1393
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1394
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x20

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 1399
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1402
    return v2

    #@34
    .line 1391
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1398
    :catchall_0
    move-exception v3

    #@3a
    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1398
    throw v3

    #@41
    .line 1396
    :cond_1
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1411
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1412
    if-eqz p2, :cond_1

    #@1a
    .line 1413
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1414
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1419
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 1420
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x21

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1405
    return-void

    #@37
    .line 1417
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 1423
    :catchall_0
    move-exception v2

    #@3d
    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1423
    throw v2
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "accountToRename"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1459
    if-eqz p1, :cond_0

    #@10
    .line 1460
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1461
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1466
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1467
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1468
    iget-object v3, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x23

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    .line 1473
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1476
    return v2

    #@37
    .line 1464
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 1472
    :catchall_0
    move-exception v3

    #@3d
    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1472
    throw v3

    #@44
    .line 1470
    :cond_1
    const/4 v2, 0x0

    #@45
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1023
    if-eqz p1, :cond_0

    #@10
    .line 1024
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1025
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1030
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1031
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1032
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x11

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1017
    return-void

    #@30
    .line 1028
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1035
    :catchall_0
    move-exception v2

    #@36
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1035
    throw v2
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1045
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1046
    if-eqz p1, :cond_0

    #@10
    .line 1047
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1048
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1053
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1054
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x12

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1040
    return-void

    #@2d
    .line 1051
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
    .line 1057
    :catchall_0
    move-exception v2

    #@33
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1057
    throw v2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accounts.IAccountManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1089
    if-eqz p1, :cond_0

    #@10
    .line 1090
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1091
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1096
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1097
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1098
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x14

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1083
    return-void

    #@30
    .line 1094
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1101
    :catchall_0
    move-exception v2

    #@36
    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1101
    throw v2
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accounts.IAccountManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1112
    if-eqz p1, :cond_0

    #@12
    .line 1113
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1114
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1119
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 1120
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1121
    if-eqz p4, :cond_1

    #@22
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1122
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x15

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1106
    return-void

    #@37
    .line 1117
    :cond_0
    const/4 v4, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 1125
    :catchall_0
    move-exception v2

    #@3d
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1125
    throw v2

    #@44
    :cond_1
    move v2, v3

    #@45
    .line 1121
    goto :goto_1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.accounts.IAccountManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1221
    if-eqz p1, :cond_0

    #@13
    invoke-interface {p1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v4

    #@17
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1222
    if-eqz p2, :cond_1

    #@1c
    .line 1223
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1224
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1229
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 1230
    if-eqz p4, :cond_2

    #@29
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 1231
    if-eqz p5, :cond_3

    #@2e
    .line 1232
    const/4 v2, 0x1

    #@2f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1233
    const/4 v2, 0x0

    #@33
    invoke-virtual {p5, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 1238
    :goto_2
    iget-object v2, p0, Landroid/accounts/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/16 v3, 0x19

    #@3a
    const/4 v4, 0x0

    #@3b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3e
    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1215
    return-void

    #@48
    .line 1227
    :cond_1
    const/4 v4, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 1241
    :catchall_0
    move-exception v2

    #@4e
    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1241
    throw v2

    #@55
    :cond_2
    move v2, v3

    #@56
    .line 1230
    goto :goto_1

    #@57
    .line 1236
    :cond_3
    const/4 v2, 0x0

    #@58
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_2
.end method
