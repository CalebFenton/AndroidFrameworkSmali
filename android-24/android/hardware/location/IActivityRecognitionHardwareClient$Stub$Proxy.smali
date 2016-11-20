.class Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardwareClient.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardwareClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;
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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@3
    return-object v0
.end method

.method public onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 6
    .param p1, "isSupported"    # Z
    .param p2, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 92
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 93
    if-eqz p1, :cond_1

    #@13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 94
    if-eqz p2, :cond_0

    #@18
    invoke-interface {p2}, Landroid/hardware/location/IActivityRecognitionHardware;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v2

    #@1c
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    .line 95
    iget-object v2, p0, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/4 v3, 0x1

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 87
    return-void

    #@30
    :cond_1
    move v3, v4

    #@31
    .line 93
    goto :goto_0

    #@32
    .line 98
    :catchall_0
    move-exception v2

    #@33
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 98
    throw v2
.end method
