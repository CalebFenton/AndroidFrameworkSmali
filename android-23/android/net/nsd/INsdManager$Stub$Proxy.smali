.class Landroid/net/nsd/INsdManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "INsdManager.java"

# interfaces
.implements Landroid/net/nsd/INsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/INsdManager$Stub;
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
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "android.net.nsd.INsdManager"

    #@3
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 97
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.nsd.INsdManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 98
    iget-object v3, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 101
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 108
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 111
    return-object v2

    #@2d
    .line 104
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/os/Messenger;
    goto :goto_0

    #@2f
    .line 107
    .end local v2    # "_result":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@30
    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 107
    throw v3
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.nsd.INsdManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 119
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 120
    iget-object v2, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x2

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 113
    return-void

    #@26
    .line 123
    :catchall_0
    move-exception v2

    #@27
    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 123
    throw v2
.end method
