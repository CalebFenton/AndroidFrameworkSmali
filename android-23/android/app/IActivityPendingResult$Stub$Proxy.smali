.class Landroid/app/IActivityPendingResult$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityPendingResult.java"

# interfaces
.implements Landroid/app/IActivityPendingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityPendingResult$Stub;
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
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Landroid/app/IActivityPendingResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/IActivityPendingResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "android.app.IActivityPendingResult"

    #@3
    return-object v0
.end method

.method public sendResult(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "ex"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 89
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityPendingResult"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 91
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 92
    if-eqz p3, :cond_0

    #@16
    .line 93
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 94
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 99
    :goto_0
    iget-object v3, p0, Landroid/app/IActivityPendingResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x1

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 104
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 107
    return v2

    #@36
    .line 97
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 103
    :catchall_0
    move-exception v3

    #@3c
    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 103
    throw v3

    #@43
    .line 101
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "_result":Z
    goto :goto_1
.end method
