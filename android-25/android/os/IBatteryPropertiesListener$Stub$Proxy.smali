.class Landroid/os/IBatteryPropertiesListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBatteryPropertiesListener.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesListener$Stub;
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Landroid/os/IBatteryPropertiesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/os/IBatteryPropertiesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .locals 5
    .param p1, "props"    # Landroid/os/BatteryProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IBatteryPropertiesListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 84
    if-eqz p1, :cond_0

    #@c
    .line 85
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 86
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 91
    :goto_0
    iget-object v1, p0, Landroid/os/IBatteryPropertiesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 79
    return-void

    #@20
    .line 89
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
    .line 93
    :catchall_0
    move-exception v1

    #@26
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 93
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    const-string/jumbo v0, "android.os.IBatteryPropertiesListener"

    #@3
    return-object v0
.end method
