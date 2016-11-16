.class Landroid/net/metrics/IDnsEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDnsEventListener.java"

# interfaces
.implements Landroid/net/metrics/IDnsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/IDnsEventListener$Stub;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Landroid/net/metrics/IDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/metrics/IDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "android.net.metrics.IDnsEventListener"

    #@3
    return-object v0
.end method

.method public onDnsEvent(IIII)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.metrics.IDnsEventListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 91
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 92
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 93
    iget-object v1, p0, Landroid/net/metrics/IDnsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x1

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 84
    return-void

    #@22
    .line 95
    :catchall_0
    move-exception v1

    #@23
    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 95
    throw v1
.end method
