.class Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService$Stub;
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
    iput-object p1, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "android.webkit.IWebViewUpdateService"

    #@3
    return-object v0
.end method

.method public notifyRelroCreationCompleted(ZZ)V
    .locals 5
    .param p1, "is64Bit"    # Z
    .param p2, "success"    # Z
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
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.webkit.IWebViewUpdateService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 96
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 97
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 98
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 90
    return-void

    #@2c
    :cond_0
    move v4, v3

    #@2d
    .line 96
    goto :goto_0

    #@2e
    :cond_1
    move v2, v3

    #@2f
    .line 97
    goto :goto_1

    #@30
    .line 101
    :catchall_0
    move-exception v2

    #@31
    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 101
    throw v2
.end method

.method public waitForRelroCreationCompleted(Z)V
    .locals 5
    .param p1, "is64Bit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 116
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 117
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x2

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 110
    return-void

    #@26
    .line 120
    :catchall_0
    move-exception v2

    #@27
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 120
    throw v2
.end method
