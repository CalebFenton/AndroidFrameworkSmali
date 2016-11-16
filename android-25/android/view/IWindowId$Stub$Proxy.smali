.class Landroid/view/IWindowId$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowId.java"

# interfaces
.implements Landroid/view/IWindowId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowId$Stub;
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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Landroid/view/IWindowId$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 78
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/IWindowId$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    const-string/jumbo v0, "android.view.IWindowId"

    #@3
    return-object v0
.end method

.method public isFocused()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowId"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 127
    iget-object v3, p0, Landroid/view/IWindowId$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 129
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
    .line 132
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 135
    return v2

    #@26
    .line 129
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 131
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 131
    throw v3
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowId"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 96
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindowFocusObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 97
    iget-object v2, p0, Landroid/view/IWindowId$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 90
    return-void

    #@29
    .line 100
    :catchall_0
    move-exception v2

    #@2a
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 100
    throw v2
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowId"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 111
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindowFocusObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 112
    iget-object v2, p0, Landroid/view/IWindowId$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 105
    return-void

    #@29
    .line 115
    :catchall_0
    move-exception v2

    #@2a
    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 115
    throw v2
.end method
