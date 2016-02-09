.class Landroid/os/ISchedulingPolicyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISchedulingPolicyService.java"

# interfaces
.implements Landroid/os/ISchedulingPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISchedulingPolicyService$Stub;
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
    iput-object p1, p0, Landroid/os/ISchedulingPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/os/ISchedulingPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "android.os.ISchedulingPolicyService"

    #@3
    return-object v0
.end method

.method public requestPriority(III)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 91
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 94
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISchedulingPolicyService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 95
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 96
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 97
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 98
    iget-object v3, p0, Landroid/os/ISchedulingPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x1

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 103
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 106
    return v2

    #@2c
    .line 102
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 102
    throw v3
.end method
