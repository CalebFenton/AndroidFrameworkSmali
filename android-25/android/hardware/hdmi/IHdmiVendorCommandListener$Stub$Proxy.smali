.class Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHdmiVendorCommandListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiVendorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@3
    return-object v0
.end method

.method public onControlStateChanged(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I
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
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiVendorCommandListener"

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
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 121
    iget-object v2, p0, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 113
    return-void

    #@29
    .line 124
    :catchall_0
    move-exception v2

    #@2a
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 124
    throw v2
.end method

.method public onReceived(II[BZ)V
    .locals 5
    .param p1, "logicalAddress"    # I
    .param p2, "destAddress"    # I
    .param p3, "operands"    # [B
    .param p4, "hasVendorId"    # Z
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
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 103
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@19
    .line 104
    if-eqz p4, :cond_0

    #@1b
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 105
    iget-object v2, p0, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x1

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 95
    return-void

    #@2f
    :cond_0
    move v2, v3

    #@30
    .line 104
    goto :goto_0

    #@31
    .line 108
    :catchall_0
    move-exception v2

    #@32
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 108
    throw v2
.end method
