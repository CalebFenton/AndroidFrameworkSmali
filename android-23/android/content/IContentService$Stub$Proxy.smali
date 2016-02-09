.class Landroid/content/IContentService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService$Stub;
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
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 664
    iput-object p1, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 662
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1069
    if-eqz p1, :cond_0

    #@10
    .line 1070
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1071
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1076
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1077
    if-eqz p3, :cond_1

    #@1d
    .line 1078
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1079
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1084
    :goto_1
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 1085
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0xf

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1063
    return-void

    #@3a
    .line 1074
    :cond_0
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1088
    :catchall_0
    move-exception v2

    #@40
    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1088
    throw v2

    #@47
    .line 1082
    :cond_1
    const/4 v2, 0x0

    #@48
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 5
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1572
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/content/ISyncStatusObserver;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1573
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x22

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1565
    return-void

    #@2d
    .line 1576
    :catchall_0
    move-exception v2

    #@2e
    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1576
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/content/SyncRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 893
    if-eqz p1, :cond_0

    #@10
    .line 894
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 895
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/SyncRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 900
    :goto_0
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 887
    return-void

    #@2a
    .line 898
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
    .line 903
    :catchall_0
    move-exception v2

    #@30
    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 903
    throw v2
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 830
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 832
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 833
    if-eqz p1, :cond_0

    #@10
    .line 834
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 835
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 840
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 841
    if-eqz p3, :cond_1

    #@1d
    .line 842
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 843
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 848
    :goto_1
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x7

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 827
    return-void

    #@36
    .line 838
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
    .line 851
    :catchall_0
    move-exception v2

    #@3c
    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 851
    throw v2

    #@43
    .line 846
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

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 862
    if-eqz p1, :cond_0

    #@10
    .line 863
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 864
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 869
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 870
    if-eqz p3, :cond_1

    #@1d
    .line 871
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 872
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 877
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 878
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0x8

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 856
    return-void

    #@3a
    .line 867
    :cond_0
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 881
    :catchall_0
    move-exception v2

    #@40
    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 881
    throw v2

    #@47
    .line 875
    :cond_1
    const/4 v2, 0x0

    #@48
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_1
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
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
    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1284
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1286
    sget-object v3, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 1289
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1292
    return-object v2

    #@26
    .line 1288
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1288
    throw v3
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
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
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1302
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x19

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1304
    sget-object v3, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 1307
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1310
    return-object v2

    #@29
    .line 1306
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1306
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 672
    const-string/jumbo v0, "android.content.IContentService"

    #@3
    return-object v0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1140
    if-eqz p1, :cond_0

    #@10
    .line 1141
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1142
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1147
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1148
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x11

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    .line 1153
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1156
    return v2

    #@31
    .line 1145
    .end local v2    # "_result":I
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
    .line 1152
    :catchall_0
    move-exception v3

    #@37
    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1152
    throw v3
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1165
    if-eqz p1, :cond_0

    #@10
    .line 1166
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1167
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1172
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1173
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1174
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x12

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v2

    #@2d
    .line 1179
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1182
    return v2

    #@34
    .line 1170
    .end local v2    # "_result":I
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
    .line 1178
    :catchall_0
    move-exception v3

    #@3a
    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1178
    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1249
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x16

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1254
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1257
    return v2

    #@27
    .line 1251
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1253
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1253
    throw v3
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1267
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x17

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1269
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
    .line 1272
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1275
    return v2

    #@2a
    .line 1269
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1271
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1271
    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
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
    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1031
    if-eqz p1, :cond_0

    #@10
    .line 1032
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1033
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1038
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1039
    if-eqz p3, :cond_1

    #@1d
    .line 1040
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1041
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1046
    :goto_1
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0xe

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1048
    sget-object v3, Landroid/content/PeriodicSync;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 1051
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1054
    return-object v2

    #@3d
    .line 1036
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
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
    .line 1050
    :catchall_0
    move-exception v3

    #@43
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1050
    throw v3

    #@4a
    .line 1044
    :cond_1
    const/4 v3, 0x0

    #@4b
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    goto :goto_1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1360
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x1c

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 1365
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1368
    return-object v2

    #@2a
    .line 1364
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2b
    .line 1365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1364
    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1323
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1325
    sget-object v3, Landroid/content/SyncAdapterType;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1328
    .local v2, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1331
    return-object v2

    #@28
    .line 1327
    .end local v2    # "_result":[Landroid/content/SyncAdapterType;
    :catchall_0
    move-exception v3

    #@29
    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1327
    throw v3
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1341
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1343
    sget-object v3, Landroid/content/SyncAdapterType;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1346
    .local v2, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1349
    return-object v2

    #@2b
    .line 1345
    .end local v2    # "_result":[Landroid/content/SyncAdapterType;
    :catchall_0
    move-exception v3

    #@2c
    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1345
    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 920
    if-eqz p1, :cond_0

    #@10
    .line 921
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 922
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 927
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 928
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xa

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 930
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
    .line 933
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 936
    return v2

    #@34
    .line 925
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
    .line 932
    :catchall_0
    move-exception v3

    #@3a
    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 932
    throw v3

    #@41
    .line 930
    :cond_1
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 945
    if-eqz p1, :cond_0

    #@10
    .line 946
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 947
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 952
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 953
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 954
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0xb

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 956
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
    .line 959
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 962
    return v2

    #@37
    .line 950
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
    .line 958
    :catchall_0
    move-exception v3

    #@3d
    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 958
    throw v3

    #@44
    .line 956
    :cond_1
    const/4 v2, 0x0

    #@45
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1425
    if-eqz p1, :cond_0

    #@10
    .line 1426
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1427
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1432
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1433
    if-eqz p3, :cond_1

    #@1d
    .line 1434
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1435
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1440
    :goto_1
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x1e

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1441
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 1443
    sget-object v3, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 1450
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1453
    return-object v2

    #@45
    .line 1430
    :cond_0
    const/4 v3, 0x0

    #@46
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 1449
    :catchall_0
    move-exception v3

    #@4b
    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1449
    throw v3

    #@52
    .line 1438
    :cond_1
    const/4 v3, 0x0

    #@53
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_1

    #@57
    .line 1446
    :cond_2
    const/4 v2, 0x0

    #@58
    .local v2, "_result":Landroid/content/SyncStatusInfo;
    goto :goto_2
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1462
    if-eqz p1, :cond_0

    #@10
    .line 1463
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1464
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1469
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1470
    if-eqz p3, :cond_1

    #@1d
    .line 1471
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1472
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1477
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1478
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v4, 0x1f

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 1481
    sget-object v3, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1488
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1491
    return-object v2

    #@48
    .line 1467
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
    .line 1487
    :catchall_0
    move-exception v3

    #@4e
    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1487
    throw v3

    #@55
    .line 1475
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
    .line 1484
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Landroid/content/SyncStatusInfo;
    goto :goto_2
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1385
    if-eqz p1, :cond_0

    #@10
    .line 1386
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1387
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1392
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1393
    if-eqz p3, :cond_1

    #@1d
    .line 1394
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1395
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1400
    :goto_1
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x1d

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1402
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
    .line 1405
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1408
    return v2

    #@3e
    .line 1390
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
    .line 1404
    :catchall_0
    move-exception v3

    #@44
    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1404
    throw v3

    #@4b
    .line 1398
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
    .line 1402
    :cond_2
    const/4 v2, 0x0

    #@51
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1507
    if-eqz p1, :cond_0

    #@10
    .line 1508
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1509
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1514
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1515
    if-eqz p3, :cond_1

    #@1d
    .line 1516
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1517
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1522
    :goto_1
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x20

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1524
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
    .line 1527
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1530
    return v2

    #@3e
    .line 1512
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
    .line 1526
    :catchall_0
    move-exception v3

    #@44
    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1526
    throw v3

    #@4b
    .line 1520
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
    .line 1524
    :cond_2
    const/4 v2, 0x0

    #@51
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1539
    if-eqz p1, :cond_0

    #@10
    .line 1540
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1541
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1546
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1547
    if-eqz p3, :cond_1

    #@1d
    .line 1548
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1549
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1554
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1555
    iget-object v3, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v4, 0x21

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    const/4 v2, 0x1

    #@3a
    .line 1560
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1563
    return v2

    #@41
    .line 1544
    .end local v2    # "_result":Z
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
    .line 1559
    :catchall_0
    move-exception v3

    #@47
    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1559
    throw v3

    #@4e
    .line 1552
    :cond_1
    const/4 v3, 0x0

    #@4f
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_1

    #@53
    .line 1557
    :cond_2
    const/4 v2, 0x0

    #@54
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z
    .param p5, "userHandle"    # I
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
    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 730
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentService"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 733
    if-eqz p1, :cond_1

    #@13
    .line 734
    const/4 v5, 0x1

    #@14
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 735
    const/4 v5, 0x0

    #@18
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 740
    :goto_0
    if-eqz p2, :cond_0

    #@1d
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v4

    #@21
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 741
    if-eqz p3, :cond_2

    #@26
    move v4, v2

    #@27
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 742
    if-eqz p4, :cond_3

    #@2c
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 743
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 744
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@34
    const/4 v3, 0x3

    #@35
    const/4 v4, 0x0

    #@36
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 727
    return-void

    #@43
    .line 738
    :cond_1
    const/4 v5, 0x0

    #@44
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 747
    :catchall_0
    move-exception v2

    #@49
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 747
    throw v2

    #@50
    :cond_2
    move v4, v3

    #@51
    .line 741
    goto :goto_1

    #@52
    :cond_3
    move v2, v3

    #@53
    .line 742
    goto :goto_2
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 699
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.content.IContentService"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 702
    if-eqz p1, :cond_1

    #@13
    .line 703
    const/4 v5, 0x1

    #@14
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 704
    const/4 v5, 0x0

    #@18
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 709
    :goto_0
    if-eqz p2, :cond_2

    #@1d
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 710
    if-eqz p3, :cond_0

    #@22
    invoke-interface {p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@25
    move-result-object v2

    #@26
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@29
    .line 711
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 712
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2e
    const/4 v3, 0x2

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 696
    return-void

    #@3d
    .line 707
    :cond_1
    const/4 v5, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 715
    :catchall_0
    move-exception v2

    #@43
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 715
    throw v2

    #@4a
    :cond_2
    move v3, v4

    #@4b
    .line 709
    goto :goto_1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1106
    if-eqz p1, :cond_0

    #@10
    .line 1107
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1108
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1113
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1114
    if-eqz p3, :cond_1

    #@1d
    .line 1115
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1116
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1121
    :goto_1
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x10

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1100
    return-void

    #@37
    .line 1111
    :cond_0
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 1124
    :catchall_0
    move-exception v2

    #@3d
    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1124
    throw v2

    #@44
    .line 1119
    :cond_1
    const/4 v2, 0x0

    #@45
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1587
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/content/ISyncStatusObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1588
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x23

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1581
    return-void

    #@2a
    .line 1591
    :catchall_0
    move-exception v2

    #@2b
    .line 1592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1591
    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
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
    .line 757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 758
    if-eqz p1, :cond_0

    #@10
    .line 759
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 760
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 765
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 766
    if-eqz p3, :cond_1

    #@1d
    .line 767
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 768
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 773
    :goto_1
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x4

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 752
    return-void

    #@36
    .line 763
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
    .line 776
    :catchall_0
    move-exception v2

    #@3c
    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 776
    throw v2

    #@43
    .line 771
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

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1194
    if-eqz p1, :cond_0

    #@10
    .line 1195
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1196
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1201
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1202
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1203
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x13

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1188
    return-void

    #@30
    .line 1199
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
    .line 1206
    :catchall_0
    move-exception v2

    #@36
    .line 1207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1206
    throw v2
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1217
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1218
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x14

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1211
    return-void

    #@27
    .line 1221
    :catchall_0
    move-exception v2

    #@28
    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1221
    throw v2
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1232
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1234
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x15

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1226
    return-void

    #@2a
    .line 1237
    :catchall_0
    move-exception v2

    #@2b
    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1237
    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
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
    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.IContentService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 976
    if-eqz p1, :cond_0

    #@12
    .line 977
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 978
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 983
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 984
    if-eqz p3, :cond_1

    #@1f
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 985
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xc

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 986
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 970
    return-void

    #@34
    .line 981
    :cond_0
    const/4 v4, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 988
    :catchall_0
    move-exception v2

    #@3a
    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 988
    throw v2

    #@41
    :cond_1
    move v2, v3

    #@42
    .line 984
    goto :goto_1
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
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
    const/4 v3, 0x0

    #@2
    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.IContentService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 999
    if-eqz p1, :cond_0

    #@12
    .line 1000
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1001
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1006
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 1007
    if-eqz p3, :cond_1

    #@1f
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1008
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1009
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0xd

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 993
    return-void

    #@37
    .line 1004
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
    .line 1012
    :catchall_0
    move-exception v2

    #@3d
    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1012
    throw v2

    #@44
    :cond_1
    move v2, v3

    #@45
    .line 1007
    goto :goto_1
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/content/SyncRequest;
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
    .line 789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 790
    if-eqz p1, :cond_0

    #@10
    .line 791
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 792
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/SyncRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 797
    :goto_0
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 784
    return-void

    #@29
    .line 795
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 800
    :catchall_0
    move-exception v2

    #@2f
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 800
    throw v2
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .locals 5
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I
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
    const-string/jumbo v2, "android.content.IContentService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 811
    if-eqz p1, :cond_0

    #@10
    .line 812
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 813
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/SyncRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 818
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 819
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x6

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 805
    return-void

    #@2c
    .line 816
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 822
    :catchall_0
    move-exception v2

    #@32
    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 822
    throw v2
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/database/IContentObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IContentService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 680
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 681
    iget-object v2, p0, Landroid/content/IContentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 674
    return-void

    #@29
    .line 684
    :catchall_0
    move-exception v2

    #@2a
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 684
    throw v2
.end method
