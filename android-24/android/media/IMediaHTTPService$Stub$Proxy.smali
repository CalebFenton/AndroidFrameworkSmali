.class Landroid/media/IMediaHTTPService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaHTTPService.java"

# interfaces
.implements Landroid/media/IMediaHTTPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaHTTPService$Stub;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroid/media/IMediaHTTPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/IMediaHTTPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "android.media.IMediaHTTPService"

    #@3
    return-object v0
.end method

.method public makeHTTPConnection()Landroid/media/IMediaHTTPConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 75
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 78
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaHTTPService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 79
    iget-object v3, p0, Landroid/media/IMediaHTTPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Landroid/media/IMediaHTTPConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaHTTPConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 84
    .local v2, "_result":Landroid/media/IMediaHTTPConnection;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 87
    return-object v2

    #@27
    .line 83
    .end local v2    # "_result":Landroid/media/IMediaHTTPConnection;
    :catchall_0
    move-exception v3

    #@28
    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 83
    throw v3
.end method
