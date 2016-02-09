.class Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBatteryPropertiesRegistrar.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesRegistrar$Stub;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "android.os.IBatteryPropertiesRegistrar"

    #@3
    return-object v0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IBatteryPropertiesRegistrar"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 141
    iget-object v3, p0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 144
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 145
    invoke-virtual {p2, v1}, Landroid/os/BatteryProperty;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 149
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 152
    return v2

    #@2f
    .line 148
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 148
    throw v3
.end method

.method public registerListener(Landroid/os/IBatteryPropertiesListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IBatteryPropertiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IBatteryPropertiesRegistrar"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 109
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/os/IBatteryPropertiesListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 110
    iget-object v2, p0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 103
    return-void

    #@29
    .line 113
    :catchall_0
    move-exception v2

    #@2a
    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 113
    throw v2
.end method

.method public unregisterListener(Landroid/os/IBatteryPropertiesListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IBatteryPropertiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IBatteryPropertiesRegistrar"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 124
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/os/IBatteryPropertiesListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 125
    iget-object v2, p0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 118
    return-void

    #@29
    .line 128
    :catchall_0
    move-exception v2

    #@2a
    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 128
    throw v2
.end method
