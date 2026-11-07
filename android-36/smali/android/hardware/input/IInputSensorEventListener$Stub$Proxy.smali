.class Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/hardware/input/IInputSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputSensorEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 141
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    return-object v0
.end method

.method public blacklist onInputSensorAccuracyChanged(III)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "sensorId"    # I
    .param p3, "accuracy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.input.IInputSensorEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v1
.end method

.method public blacklist onInputSensorChanged(IIIJ[F)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "sensorId"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.input.IInputSensorEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 154
    iget-object v1, p0, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v1
.end method
