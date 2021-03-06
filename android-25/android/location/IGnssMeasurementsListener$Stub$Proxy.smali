.class Landroid/location/IGnssMeasurementsListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssMeasurementsListener.java"

# interfaces
.implements Landroid/location/IGnssMeasurementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssMeasurementsListener$Stub;
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Landroid/location/IGnssMeasurementsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/location/IGnssMeasurementsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "android.location.IGnssMeasurementsListener"

    #@3
    return-object v0
.end method

.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 91
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssMeasurementsListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 92
    if-eqz p1, :cond_0

    #@c
    .line 93
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 94
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/location/GnssMeasurementsEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 99
    :goto_0
    iget-object v1, p0, Landroid/location/IGnssMeasurementsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 87
    return-void

    #@20
    .line 97
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
    .line 101
    :catchall_0
    move-exception v1

    #@26
    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 101
    throw v1
.end method

.method public onStatusChanged(I)V
    .locals 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssMeasurementsListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 111
    iget-object v1, p0, Landroid/location/IGnssMeasurementsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 105
    return-void

    #@19
    .line 113
    :catchall_0
    move-exception v1

    #@1a
    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 113
    throw v1
.end method
