.class Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMountShutdownObserver.java"

# interfaces
.implements Landroid/os/storage/IMountShutdownObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountShutdownObserver$Stub;
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "IMountShutdownObserver"

    #@3
    return-object v0
.end method

.method public onShutDownComplete(I)V
    .locals 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountShutdownObserver"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 106
    iget-object v2, p0, Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 100
    return-void

    #@22
    .line 108
    :catchall_0
    move-exception v2

    #@23
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 108
    throw v2
.end method
