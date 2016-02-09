.class Landroid/service/notification/IConditionProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConditionProvider.java"

# interfaces
.implements Landroid/service/notification/IConditionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IConditionProvider$Stub;
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
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    iput-object p1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 92
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "android.service.notification.IConditionProvider"

    #@3
    return-object v0
.end method

.method public onConnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 109
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 104
    return-void

    #@16
    .line 111
    :catchall_0
    move-exception v1

    #@17
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 111
    throw v1
.end method

.method public onRequestConditions(I)V
    .locals 5
    .param p1, "relevance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 121
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 115
    return-void

    #@19
    .line 123
    :catchall_0
    move-exception v1

    #@1a
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 123
    throw v1
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1, "conditionId"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 132
    if-eqz p1, :cond_0

    #@c
    .line 133
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 134
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 139
    :goto_0
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x3

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 127
    return-void

    #@20
    .line 137
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 141
    :catchall_0
    move-exception v1

    #@26
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 141
    throw v1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1, "conditionId"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 150
    if-eqz p1, :cond_0

    #@c
    .line 151
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 152
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 157
    :goto_0
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x4

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 145
    return-void

    #@20
    .line 155
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 159
    :catchall_0
    move-exception v1

    #@26
    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 159
    throw v1
.end method
