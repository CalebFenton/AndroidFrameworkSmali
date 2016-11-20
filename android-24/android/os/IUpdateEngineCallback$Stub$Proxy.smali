.class Landroid/os/IUpdateEngineCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUpdateEngineCallback.java"

# interfaces
.implements Landroid/os/IUpdateEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngineCallback$Stub;
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
    iput-object p1, p0, Landroid/os/IUpdateEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/os/IUpdateEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "android.os.IUpdateEngineCallback"

    #@3
    return-object v0
.end method

.method public onPayloadApplicationComplete(I)V
    .locals 5
    .param p1, "error_code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IUpdateEngineCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 100
    iget-object v1, p0, Landroid/os/IUpdateEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 94
    return-void

    #@19
    .line 102
    :catchall_0
    move-exception v1

    #@1a
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 102
    throw v1
.end method

.method public onStatusUpdate(IF)V
    .locals 5
    .param p1, "status_code"    # I
    .param p2, "percentage"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 85
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.os.IUpdateEngineCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 86
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 87
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@10
    .line 88
    iget-object v1, p0, Landroid/os/IUpdateEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 81
    return-void

    #@1c
    .line 90
    :catchall_0
    move-exception v1

    #@1d
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 90
    throw v1
.end method
